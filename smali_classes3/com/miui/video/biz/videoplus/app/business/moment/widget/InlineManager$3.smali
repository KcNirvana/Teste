.class Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$3;
.super Ljava/lang/Object;
.source "InlineManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;->startInternal(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

.field final synthetic val$root:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$3;->this$0:Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$3;->val$root:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/InlineManager$3;->val$root:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    const/4 p1, 0x1

    return p1
.end method
