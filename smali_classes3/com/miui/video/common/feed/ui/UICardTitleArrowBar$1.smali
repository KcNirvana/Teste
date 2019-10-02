.class Lcom/miui/video/common/feed/ui/UICardTitleArrowBar$1;
.super Ljava/lang/Object;
.source "UICardTitleArrowBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;


# direct methods
.method constructor <init>(Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar$1;->this$0:Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar$1;->this$0:Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;

    invoke-static {p1}, Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;->access$000(Lcom/miui/video/common/feed/ui/UICardTitleArrowBar;)Lcom/miui/video/common/feed/entity/TinyCardEntity;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/framework/utils/EntityUtils;->isNotNull(Ljava/lang/Object;)Z

    return-void
.end method
