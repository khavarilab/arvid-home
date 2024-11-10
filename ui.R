# This file defines the dashboard UI for the app

dash <-  dashboardPage(
    dashboardHeader(title = 'ARVID'),
    
    # Sidebar content
    dashboardSidebar(
      sidebarMenu(
        menuItem('About ARVID', tabName = 'arvid', icon = icon('dna')),
        menuItem('ARVID Projects', tabName = 'projects', icon = icon('folder')),
        menuItem('Additional Info', tabName = 'about', icon = icon('circle-info'))
    )),
    
    # Body content
    dashboardBody(
      tabItems(
      
        tabItem(
          tabName = 'arvid',
          tags$div(
            style = 'width:800px',
            tags$img(src = 'banner_dna.jpeg', width = '800px', height = '300px'),
            tags$h3('Atlas of Regulatory Variants in Disease'),
            tags$p('Advancements in our ability to sequence the human genome, with its vast 3.2 billion nucleotide base pairs have shaped the modern era of medicine.
                    A major insight from these efforts is that the variations in our DNA sequence that confer unique traits also mediate the risk of developing common diseases, including cancer, neuropsychiatric disease, heart disease, stroke, dementia, diabetes, and autoimmunity.'),
            tags$p('Leveraging this insight to improve human health now represents the major challenge facing biomedicine. 
                    That is because studies linking DNA sequence-disease relationships only identify large regions of the genome correlated with disease risk, but they are too low resolution to illuminate the underlying pathologic mechanisms needed to identify therapeutic targets.'),
            tags$p('Additionally, multiple lines of data suggest that at least half of inherited disease risk occurs through DNA variants that alter the function of regulatory DNA.
                    The atlas of regulatory variants in disease (ARVID) aims to produce a resource of altered regulatory genomic variants in disease risk and putative target genes.
                    An atlas of functionally validated disease variants, the genes they control, and the proteins whose binding they alter will help understand, predict, and prevent common diseases.')
          )
          ),

        tabItem(
          tabName = 'projects',
          h3('ARVID Projects'),
          tags$br(),
          tags$div(
            style = 'width:320px',
            tags$img(src = 'proj_skin.png', width = '320px', height = '200px'),
            tags$br(),
            tags$a(href = 'https://arvid-data.shinyapps.io/skin/', 
                   tags$p(style = 'text-align:center;font-size:16px', 'CRE variants in Prevalent Skin Diseases')),
            tags$br(),
            tags$br(),
            tags$br(),
            tags$img(src = 'proj_cancer.png', width = '320px', height = '200px'),
            tags$br(),
            tags$a(href = 'https://arvid-data.shinyapps.io/cancer/', 
                   tags$p(style = 'text-align:center;font-size:16px', 'CRE variants in Common Human Cancers')),
            tags$br(),
            tags$br(),
            tags$br(),
            tags$img(src = 'proj_brain.png', width = '320px', height = '200px'),
            tags$br(),
            tags$a(href = 'https://arvid-data.shinyapps.io/neuropsychiatry/',
                   tags$p(style = 'text-align:center;font-size:16px', 'CRE variants in Neuropsychiatric Disorders')),
          )
        ),
        
        tabItem(
          tabName = 'about',
          tags$div(
            tags$h3('Additional Information'),
            tags$br(),
            tags$p('Please use Suggested Citation found in the "Additional Information" page of respective projects.'),
            tags$p(''),
            tags$br(),
            tags$h4('Contact Us'),
            tags$p('For questions or feedback please email: (suhas <dot> srinivasan <at> stanford <dot> edu)'),
            tags$a(href = 'https://khavarilab.stanford.edu/', 'Developed at the Khavari Lab', target = '_blank'),
            tags$p(''),
            tags$br(),
            tags$h4('Funding Sources'),
            tags$p('NHGRI: 5U24HG010856'),
            tags$p('NIAMS: AR076965'),
            tags$p('NIAMS: AR43799'),
            tags$p('NCI: CA142635'),
            tags$p('USVA: Office of Research and Development'),
            tags$p('Donors: Kathy Fields and Garry Rayant')
          ),
          tags$br(),
          tags$div(
            HTML('
              <head>
              <style>
              * {
                  box-sizing: border-box;
                }
              
              .column {
                float: left;
                width: 25%;
                padding: 5px;
              }
              
              .row::after {
                content: "";
                clear: both;
                display: table;
              }
              </style>
              </head>
              
              <body>
                <div class="row">
                  <div class="column">
                    <a href = "https://www.genome.gov/">
                      <img src="logo_nhgri.png" style="width:55%">
                    </a>
                  </div>
                  <div class="column">
                    <a href = "https://www.niams.nih.gov/">
                      <img src="logo_niams.png" style="width:60%">
                    </a>
                  </div>
                  <div class="column">
                    <a href = "https://www.cancer.gov/">
                      <img src="logo_nci.png" style="width:40%">
                    </a>  
                  </div>
                  <div class="column">
                    <a href = "https://www.research.va.gov/">
                      <img src="logo_va.png" style="width:60%">
                    </a>
                  </div>
                  </div>
              </body>
            ')
          )
        
        )
      )
    )
)



