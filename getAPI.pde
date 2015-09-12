void runGetBestSellerHistoryChoreo() {
  // Create the Choreo object using your Temboo session
  GetBestSellerHistory getBestSellerHistoryChoreo = new GetBestSellerHistory(session);
  getBestSellerHistoryChoreo.setCredential("nytbestseller");
  getBestSellerHistoryChoreo.setISBN("9780062294371");
  getBestSellerHistoryChoreo.setTitle("THE FIRST PHONE CALL FROM HEAVEN");
  GetBestSellerHistoryResultSet getBestSellerHistoryResults = getBestSellerHistoryChoreo.run();
  rankhistory = parseJSONObject(getBestSellerHistoryResults.getResponse());
}
