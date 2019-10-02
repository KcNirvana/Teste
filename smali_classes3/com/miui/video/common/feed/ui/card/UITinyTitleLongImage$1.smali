.class Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage$1;
.super Ljava/lang/Object;
.source "UITinyTitleLongImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage$1;->this$0:Lcom/miui/video/common/feed/ui/card/UITinyTitleLongImage;

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
