import { expect, test } from 'vitest'

import { app } from "./app";

test("app is Hello World", () => {
    expect(app()).toBe("Hello World");
});