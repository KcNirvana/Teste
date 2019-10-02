.class public interface abstract Lcom/miui/video/base/common/impl/IDownloadToDo;
.super Ljava/lang/Object;
.source "IDownloadToDo.java"

# interfaces
.implements Lcom/miui/video/base/common/impl/ITaskToDo;


# virtual methods
.method public abstract runDownload(Ljava/lang/String;Lcom/miui/video/base/common/entity/FileEntity;Ljava/io/InputStream;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ICancelListener;Lcom/miui/video/base/common/impl/IUIListener;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
