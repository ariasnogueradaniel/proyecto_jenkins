pipeline {
    agent any

    stages {
        stage('Construir Imagen de Desarrollo') {
            steps {
                // Cambiamos al directorio donde se encuentran los archivos docker
                dir('carpeta/proyectodocker/proyectodocker') {
                    script {
                        bat "docker-compose build"
                    }
                }
            }
        }
    }
}
