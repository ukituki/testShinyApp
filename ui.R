# Step 3, plan B
# If Step 3 does not work, here is something to try:
#         
#         Create a new Rstudio project: File > New Project > New Directory > Empty Project.
# 
# Choose the directory in which you want to put your repository, check 
# “Create a git repository” and click “Create Project”.

# Go to Tools > Shell and type 
#1.
git remote add origin https://github.com/ukituki/testShinyApp.git


# This command has no output. It just associates the repository (and RStudio Project) 
# on your machine with the companion repository on GitHub.

#Also in the shell, enter 
git pull origin master
# This should download all files from the online GitHub repository.

#Now try this in the shell:
git push -u origin master 
#Our goal here is to trigger a challenge for your 
#GitHub username and password. After you provide, you should see 
#“Everything up-to-date”.



# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  # Application title
  titlePanel("Old Faithful Geyser Data"),

  # Sidebar with a slider input for number of bins
  sidebarLayout(
    sidebarPanel(
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
    ),

    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
