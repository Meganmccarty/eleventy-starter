import { add } from './add.js';

describe('add', () => {
    it('adds three to three', () => {
        expect(add(3, 3)).toEqual(6);
    });
});