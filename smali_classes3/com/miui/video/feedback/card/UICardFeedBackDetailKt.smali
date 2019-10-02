.class public final Lcom/miui/video/feedback/card/UICardFeedBackDetailKt;
.super Ljava/lang/Object;
.source "UICardFeedBackDetail.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u0010\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "getResourceByType",
        "",
        "itemType",
        "",
        "biz_feedback_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public static final getResourceByType(Ljava/lang/String;)I
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5fda8d9

    if-eq v0, v1, :cond_3

    const v1, 0x38b73479

    if-eq v0, v1, :cond_2

    const v1, 0x4763ca04

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "suggestion"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget p0, Lcom/miui/video/feedback/R$drawable;->ic_suggestion:I

    goto :goto_1

    :cond_2
    const-string v0, "content"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget p0, Lcom/miui/video/feedback/R$drawable;->ic_content:I

    goto :goto_1

    :cond_3
    const-string v0, "issue"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget p0, Lcom/miui/video/feedback/R$drawable;->ic_issue:I

    goto :goto_1

    :cond_4
    :goto_0
    sget p0, Lcom/miui/video/feedback/R$drawable;->ic_content:I

    :goto_1
    return p0
.end method
