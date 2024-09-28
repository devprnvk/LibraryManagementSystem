function getQueryParams() {
    const params = {};
    const queryString = window.location.search.substring(1);
    const regex = /([^&=]+)=([^&]*)/g;
    let m;

    while (m = regex.exec(queryString)) {
        params[decodeURIComponent(m[1])] = decodeURIComponent(m[2]);
    }
    return params;
}

window.onload = function() {
    const params = getQueryParams();
    document.getElementById('memberName').innerText = `Member: ${params.member}`;
    document.getElementById('bookTitle').innerText = `Book Title: "${params.book}"`;
};
