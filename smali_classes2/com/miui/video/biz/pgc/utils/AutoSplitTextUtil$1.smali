.class final Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;
.super Landroid/text/style/ClickableSpan;
.source "AutoSplitTextUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil;->getLastIndexForLimit(Landroid/widget/TextView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$expandText:Ljava/lang/String;

.field final synthetic val$maxLine:I

.field final synthetic val$tv:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->val$content:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->val$tv:Landroid/widget/TextView;

    iput p3, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->val$maxLine:I

    iput-object p4, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->val$expandText:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance p1, Landroid/text/SpannableString;

    iget-object v0, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->val$content:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1$1;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1$1;-><init>(Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;)V

    iget-object v1, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->val$content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/miui/video/biz/pgc/utils/AutoSplitTextUtil$1;->val$tv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
