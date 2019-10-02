.class public Lcom/miui/video/common/library/widget/ext/NoUnderlineSpan;
.super Landroid/text/style/URLSpan;
.source "NoUnderlineSpan.java"


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/common/library/widget/ext/NoUnderlineSpan;->mColor:I

    return-void
.end method


# virtual methods
.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/common/library/widget/ext/NoUnderlineSpan;->mColor:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    iget v0, p0, Lcom/miui/video/common/library/widget/ext/NoUnderlineSpan;->mColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/video/common/library/widget/ext/NoUnderlineSpan;->mColor:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
