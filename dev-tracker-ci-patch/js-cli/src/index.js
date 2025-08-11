export function greet(name="World"){ return `Hello, ${name}!`; }
if (import.meta.url === `file://${process.argv[1]}`) { console.log(greet()); }
