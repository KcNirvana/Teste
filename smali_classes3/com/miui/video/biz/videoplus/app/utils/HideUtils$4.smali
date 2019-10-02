.class final Lcom/miui/video/biz/videoplus/app/utils/HideUtils$4;
.super Ljava/lang/Object;
.source "HideUtils.java"

# interfaces
.implements Lcom/miui/video/base/common/impl/IBackgroundToDo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/utils/HideUtils;->hideItems(Ljava/util/List;Lcom/miui/video/base/common/impl/IUIListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runBackground(Ljava/lang/String;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ICancelListener;Lcom/miui/video/base/common/impl/IUIListener;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    new-instance p4, Lcom/miui/video/base/database/LocalVideoEntity;

    invoke-direct {p4}, Lcom/miui/video/base/database/LocalVideoEntity;-><init>()V

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Lcom/miui/video/base/database/LocalVideoEntity;->setMediaId(J)V

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/miui/video/base/database/LocalVideoEntity;->setPath(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/video/framework/utils/CipherUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Lcom/miui/video/base/database/LocalVideoEntity;->setMd5Path(Ljava/lang/String;)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/video/base/database/CLVDatabase;->insertVideoHideTable(Ljava/util/List;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
