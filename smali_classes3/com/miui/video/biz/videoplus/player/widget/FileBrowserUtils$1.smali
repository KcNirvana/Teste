.class final Lcom/miui/video/biz/videoplus/player/widget/FileBrowserUtils$1;
.super Ljava/lang/Object;
.source "FileBrowserUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/widget/FileBrowserUtils;->sortFiles(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;)I
    .locals 0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/utils/TxtUtils;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;

    check-cast p2, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/player/widget/FileBrowserUtils$1;->compare(Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;Lcom/miui/video/biz/videoplus/player/widget/FileBrowserWrapper;)I

    move-result p1

    return p1
.end method
