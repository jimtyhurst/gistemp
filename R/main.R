# Copyright 2017 Jim Tyhurst
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#' Produces a scatter plot of temperature anomalies by year.
#' @return ggplot object.
#' @export
scatterPlot <- function() {
  p <- "./inst/temperatureData/ExcelFormattedGISTEMPData2CSV.csv" %>%
    readTemperatureData() %>%
    ggplot() +
      geom_point(mapping = aes(Year, Glob),
                 colour = "blue",
                 stat = "identity") +
      ggtitle("Global temperature anomaly by Year") +
      xlab("Year") +
      ylab("Global temperature difference from mean")
  return(p)
}
