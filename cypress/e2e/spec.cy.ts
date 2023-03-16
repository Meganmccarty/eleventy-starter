import 'cypress-axe';

// Outputs specific a11y violations to terminal in tabular format
function terminalLog(violations: Array<any>) {
    cy.task(
        'log',
        `${violations.length} accessibility violation${
            violations.length === 1 ? '' : 's'
        } ${violations.length === 1 ? 'was' : 'were'} detected`,
    );

    const violationData = violations.map(({
        id, impact, description, nodes,
    }) => ({
        id,
        impact,
        description,
        nodes: nodes.length,
    }));

    cy.task('table', violationData);
}

describe('load page', () => {
    beforeEach(() => {
        cy.visit('http://localhost:8080/');
        cy.injectAxe();
    });

    it('has no detectable a11y violations on load', () => {
        // Test the page at initial load
        cy.checkA11y(undefined, undefined, terminalLog);
    });
});
