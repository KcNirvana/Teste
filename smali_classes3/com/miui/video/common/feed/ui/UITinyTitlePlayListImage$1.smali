.class Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage$1;
.super Ljava/lang/Object;
.source "UITinyTitlePlayListImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage$1;->this$0:Lcom/miui/video/common/feed/ui/UITinyTitlePlayListImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/video/common/feed/entity/TinyCardEntity;

    :cond_0
    return-void
.end method
