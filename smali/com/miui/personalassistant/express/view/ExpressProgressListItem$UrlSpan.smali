.class public Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan;
.super Landroid/text/style/ClickableSpan;
.source "ExpressProgressListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/view/ExpressProgressListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlSpan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan$UrlSpanOnClickListener;
    }
.end annotation


# instance fields
.field private mOnClickListener:Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan$UrlSpanOnClickListener;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan$UrlSpanOnClickListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan;->mOnClickListener:Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan$UrlSpanOnClickListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan;->mOnClickListener:Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan$UrlSpanOnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan;->mOnClickListener:Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan$UrlSpanOnClickListener;

    invoke-interface {v0}, Lcom/miui/personalassistant/express/view/ExpressProgressListItem$UrlSpan$UrlSpanOnClickListener;->onClick()V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    const v0, -0xffff01

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method
