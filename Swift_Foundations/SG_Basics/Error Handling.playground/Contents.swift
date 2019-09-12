func canThrowAnError() throws {
    // this can throw an error
}

do {
    try canThrowAnError()
    // no error case
} catch {
    // error case
}
