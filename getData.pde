void getData() {
  JSONArray allranks = rankhistory.getJSONArray("results");
  JSONObject ranks = allranks.getJSONObject(0);
  JSONArray data = ranks.getJSONArray("ranks_history");
  lin = int(data.size());
  allhistory = new History[lin];

  for (int i=0; i< lin; i++) {
    JSONObject each = data.getJSONObject(lin-i-1);
    History d = new History();
    d.rank = each.getInt("rank");
    d.date = each.getString("published_date");
    allhistory[i] = d;
  }
  for (History d : allhistory) {
    //println(d.date);
  }
  rankMin = 2;
  rankMax = 25;
  xspace =  int((width - xmargin - xmargin) / (lin-1));

  for (int k=0; k<lin; k++) {
    float adjRank = map(allhistory[k].rank, rankMin, rankMax, 0, height-margin-margin);
    float yPos =  margin + adjRank;
    float xPos = xmargin + (xspace * k);
    position[k] = new PVector(xPos, yPos);
    highpos[k] = new PVector(xPos-30, yPos-30);
    //print((rankMax-rankMin)/(height-margin-margin)+","+xspace/(rankMax-rankMin));
  }
}
