.class Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1$1;
.super Landroid/text/style/ClickableSpan;
.source "AutoSplitTextUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1$1;->this$0:Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1$1;->this$0:Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;

    iget-object p1, p1, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->val$tv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1$1;->this$0:Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;

    iget v0, v0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->val$maxLine:I

    iget-object v1, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1$1;->this$0:Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;

    iget-object v1, v1, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->val$content:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1$1;->this$0:Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;

    iget-object v2, v2, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->val$expandText:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil;->getLastIndexForLimit(Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
