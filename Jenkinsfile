pipeline {
    agent any

    stages {
        stage('Input') {
            steps {
                script {
                    // Prompt user for input
                    def userInput = input(
                        id: 'userInput', message: 'Please enter the number of terms:', parameters: [
                            string(defaultValue: '10', description: 'Number of terms in Fibonacci series', name: 'number')
                        ]
                    )
                    env.NUMBER = userInput
                }
            }
        }
        
        stage('Validate Input') {
            steps {
                script {
                    // Validate the input
                    if (!env.NUMBER.isInteger() || env.NUMBER.toInteger() <= 0) {
                        error("Invalid input. Please enter a positive integer.")
                    }
                }
            }
        }

        stage('Fibonacci Calculation') {
            steps {
                script {
                    // Function to generate Fibonacci series up to n terms
                    def fibonacci = { n ->
                        def a = 0
                        def b = 1
                        def series = [a]
                        
                        for (int i = 1; i < n; i++) {
                            def next = a + b
                            series.add(next)
                            a = b
                            b = next
                        }
                        return series
                    }

                    // Calculate Fibonacci series
                    def numberOfTerms = env.NUMBER.toInteger()
                    def fibonacciSeries = fibonacci(numberOfTerms)
                    
                    // Print the Fibonacci series
                    echo "Fibonacci series up to ${numberOfTerms} terms: ${fibonacciSeries.join(', ')}"
                    
                    // Create an HTML report
                    def htmlContent = """
                    <html>
                        <head>
                            <title>Fibonacci Series</title>
                        </head>
                        <body>
                            <h1>Fibonacci series up to ${numberOfTerms} terms</h1>
                            <p>${fibonacciSeries.join(', ')}</p>
                        </body>
                    </html>
                    """
                    
                    writeFile file: 'fibonacci_report.html', text: htmlContent
                }
            }
        }

        stage('Publish HTML Report') {
            steps {
                publishHTML([allowMissing: false,
                    alwaysLinkToLastBuild: true,
                    keepAll: true,
                    reportDir: '.',
                    reportFiles: 'fibonacci_report.html',
                    reportName: 'Fibonacci Series Report'
                ])
            }
        }
    }
}
