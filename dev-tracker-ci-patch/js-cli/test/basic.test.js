import test from "node:test";
import assert from "node:assert";
import {greet} from "../src/index.js";

test("greet returns hello", ()=>{ assert.equal(greet("Ahmed"), "Hello, Ahmed!"); });
