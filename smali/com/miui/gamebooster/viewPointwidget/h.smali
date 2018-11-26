.class final Lcom/miui/gamebooster/viewPointwidget/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gD:Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/viewPointwidget/h;->gD:Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/viewPointwidget/h;->gD:Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;

    iget-object v1, p0, Lcom/miui/gamebooster/viewPointwidget/h;->gD:Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;

    iget v1, v1, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->fo:I

    invoke-virtual {v0, p1, v1}, Lcom/miui/gamebooster/viewPointwidget/ViewPointCommentItem;->iH(Landroid/view/View;I)V

    return-void
.end method
