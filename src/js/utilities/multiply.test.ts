import { multiply } from './multiply';

describe('multiply', () => {
    it('multplies three by three', () => {
        expect(multiply(3, 3)).toEqual(9);
    });
});