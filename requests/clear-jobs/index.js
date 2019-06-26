var request = require("request");

var options = {
    method: 'GET',
    url: 'https://wacodis.demo.52north.org/wacodis-job-definition-api/jobDefinitions?size=1000',
    headers:
    {
        'Accept': 'application/json'
    }
};

request(options, function (error, response, body) {
    if (error) throw new Error(error);

    deleteAllJobs(JSON.parse(body).data);
});

var deleteAllJobs = (jobArray) => {
    jobArray.forEach(job => {
        console.log('Deleting :' + job.id);

        var options = {
            method: 'DELETE',
            url: 'https://wacodis.demo.52north.org/wacodis-job-definition-api/jobDefinitions/' + job.id,
            headers:
            {
                'Accept': 'application/json'
            }
        };
        
        request(options, function (error, response, body) {
            if (error) throw new Error(error);
        
            console.log(response);
        });
    });
};
