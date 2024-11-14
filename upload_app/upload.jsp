<html>
<head>
    <title>Subir Archivos</title>
</head>
<body>
    <h2>Formulario para Subir Archivos</h2>
    <form action="upload.jsp" method="post" enctype="multipart/form-data">
        <input type="file" name="file" /><br><br>
        <input type="submit" value="Subir archivo" />
    </form>
    <%
        if(request.getMethod().equalsIgnoreCase("POST")){
            String uploadPath = application.getRealPath("") + File.separator + "uploads";
            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }
            try {
                List<FileItem> items = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : items) {
                    if (!item.isFormField()) {
                        String fileName = item.getName();
                        String filePath = uploadPath + File.separator + fileName;
                        File uploadedFile = new File(filePath);
                        item.write(uploadedFile);
                        out.println("Archivo subido: " + fileName + "<br>");
                    }
                }
            } catch (Exception e) {
                out.println("Error al subir el archivo: " + e.getMessage());
            }
        }
    %>
</body>
</html>
