<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Large modal -->
<div class="container mt-5">
  <button class="btn btn-success btn-block btn-lg" id="modalToggle">Launch the modal</button>
</div>

      <div class="modal-header">
        <h5 class="modal-title" id="wizard-title">Campaign Wizard</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#infoPanel" role="tab">Info</a>
          <li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#ads" role="tab">Ads</a>
          <li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#placementPanel" role="tab">Placement</a>
          <li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#schedulePanel" role="tab">Schedule</a>
          <li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#reviewPanel" role="tab">Review</a>
          <li>
        </ul>
        
        <div class="tab-content mt-2">
          <div class="tab-pane fade show active" id="infoPanel" role="tabpanel">
            <h4>Information</h4>
            <div class="form-group">
              <label for="campaignName">Campaign Name</label>
              <input type="text" class="form-text" id='campaignName'></input>
            </div>
            <button class="btn btn-secondary" id="infoContinue">Continue</button>
          </div>
          <div class="tab-pane fade" id="ads" role="tabpanel">
            <h4>Ads</h4>
            <div class="form-group">
              <label for="exampleInputFile">Fullscreen Ad Image</label>
              <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
              <small id="fileHelp" class="form-text text-muted">Select a file to use as the fullscreen ad image. Please ensure the size is at least 1080x1920 with a 9:16 (portrait) aspect ratio.</small>
            </div>
            <div class="form-group">
              <label for="exampleInputFile">Banner Ad Image</label>
              <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
              <small id="fileHelp" class="form-text text-muted">Select a file to use as the banner ad image. Please ensure the size is exactly 1080x450 for proper rendering.</small>
            </div>
            <button class="btn btn-secondary" id="adsContinue">Continue</button>
          </div>
          <div class="tab-pane fade" id="placementPanel" role="tabpanel">
            <h4>Placement</h4>
            <div id="accordion" class="mb-3" role="tablist" aria-multiselectable="true">
              <div class="card">
                <div class="card-header" role="tab" id="headingOne">
                  <h5 class="mb-0">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                      Entire Venue
                    </a>
                  </h5>
                </div>


</body>
</html>