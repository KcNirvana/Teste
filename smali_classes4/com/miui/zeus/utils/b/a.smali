.class public final Lcom/miui/zeus/utils/b/a;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public static a(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void
.end method

.method public static b(Ljava/io/File;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    return-void
.end method
