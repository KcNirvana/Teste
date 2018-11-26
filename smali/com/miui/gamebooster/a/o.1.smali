.class public Lcom/miui/gamebooster/a/o;
.super Landroid/text/style/ClickableSpan;
.source ""


# instance fields
.field private context:Landroid/content/Context;

.field private eI:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-wide p2, p0, Lcom/miui/gamebooster/a/o;->eI:J

    iput-object p1, p0, Lcom/miui/gamebooster/a/o;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
