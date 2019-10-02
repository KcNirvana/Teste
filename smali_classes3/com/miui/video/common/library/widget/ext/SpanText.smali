.class public Lcom/miui/video/common/library/widget/ext/SpanText;
.super Landroid/text/SpannableString;
.source "SpanText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/common/library/widget/ext/SpanText$Type;
    }
.end annotation


# static fields
.field public static final SHOW_GEO:Ljava/lang/String; = "geo:"

.field public static final SHOW_HTTP:Ljava/lang/String; = "http:"

.field public static final SHOW_MAIL:Ljava/lang/String; = "mailto:"

.field public static final SHOW_MMS:Ljava/lang/String; = "mms:"

.field public static final SHOW_SMS:Ljava/lang/String; = "sms:"

.field public static final SHOW_STRIKETHROUGH:Ljava/lang/String; = "strikethrough"

.field public static final SHOW_TEL:Ljava/lang/String; = "tel:"

.field public static final SHOW_UNDERLINE:Ljava/lang/String; = "underline"

.field public static final STRTYPE_ALL:I = 0x0

.field public static final STRTYPE_CHARACTER:I = 0x2

.field public static final STRTYPE_NUMERICAL:I = 0x1

.field public static final STRTYPE_SEARCH_TEXT:I = 0x4

.field public static final STRTYPE_WORD:I = 0x3


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static getSpanNoUnderLine(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/text/SpannableStringBuilder;
    .locals 8

    invoke-static {p1}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/video/common/library/widget/ext/SpanText;

    invoke-direct {v0, p1}, Lcom/miui/video/common/library/widget/ext/SpanText;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result p1

    const-class v1, Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    new-instance v5, Lcom/miui/video/common/library/widget/ext/URLSpanNoUnderLine;

    invoke-virtual {v4}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/miui/video/common/library/widget/ext/URLSpanNoUnderLine;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/miui/video/common/library/widget/ext/URLSpanNoUnderLine;->setLocale(Landroid/content/Context;)V

    invoke-virtual {v5, p2}, Lcom/miui/video/common/library/widget/ext/URLSpanNoUnderLine;->setColor(I)V

    invoke-virtual {v0, v4}, Lcom/miui/video/common/library/widget/ext/SpanText;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v4}, Lcom/miui/video/common/library/widget/ext/SpanText;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const/16 v7, 0x22

    invoke-virtual {v1, v5, v6, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public hideUnderline(III)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result v0

    add-int/2addr p1, p2

    if-ge v0, p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result p1

    const-class p2, Landroid/text/style/URLSpan;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/miui/video/common/library/widget/ext/SpanText;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    array-length p2, p1

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p1, v0

    new-instance v2, Lcom/miui/video/common/library/widget/ext/NoUnderlineSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/video/common/library/widget/ext/NoUnderlineSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/miui/video/common/library/widget/ext/NoUnderlineSpan;->setColor(I)V

    invoke-virtual {p0, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const/16 v4, 0x22

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public setBgColor(IILjava/lang/String;I)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result v0

    add-int/2addr p2, p1

    if-ge v0, p2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x21

    if-nez v0, :cond_1

    new-instance p4, Landroid/text/style/BackgroundColorSpan;

    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    invoke-direct {p4, p3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p4, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    if-lez p4, :cond_2

    new-instance p3, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {p3, p4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setColor(IIILjava/lang/String;)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result v0

    add-int/2addr p2, p1

    if-ge v0, p2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x21

    if-nez v0, :cond_1

    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    invoke-direct {p3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    new-instance p4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p4, p3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0, p4, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-object p0
.end method

.method public setColor(IILjava/lang/String;)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    const-string p1, "\\d"

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    const-string p1, "\\D"

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v1, p1, :cond_3

    const-string p1, "\\w"

    :goto_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/miui/video/common/library/widget/ext/SpanText;->setColor(IIILjava/lang/String;)Lcom/miui/video/common/library/widget/ext/SpanText;

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/miui/video/common/library/widget/ext/SpanText;->setColor(IIILjava/lang/String;)Lcom/miui/video/common/library/widget/ext/SpanText;

    return-object p0
.end method

.method public setColor([Ljava/lang/String;ILjava/lang/String;)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 8

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/miui/video/framework/utils/PatternUtils;->replaceAllSpecial(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v5

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->end(I)I

    move-result v6

    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->start(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0, v5, v6, p2, p3}, Lcom/miui/video/common/library/widget/ext/SpanText;->setColor(IIILjava/lang/String;)Lcom/miui/video/common/library/widget/ext/SpanText;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p0, p1}, Lcom/miui/video/framework/log/LogUtils;->catchException(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_2
    return-object p0
.end method

.method public setDrawable(IILandroid/graphics/drawable/Drawable;)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result v0

    add-int/2addr p2, p1

    if-ge v0, p2, :cond_0

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/16 p3, 0x21

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object p0
.end method

.method public setScale(IIF)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result v0

    add-int/2addr p2, p1

    if-ge v0, p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/text/style/ScaleXSpan;

    invoke-direct {v0, p3}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    const/16 p3, 0x21

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    return-object p0
.end method

.method public setShowType(IILjava/lang/String;Ljava/lang/String;)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result v0

    add-int/2addr p2, p1

    if-ge v0, p2, :cond_0

    return-object p0

    :cond_0
    const-string v0, "underline"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x21

    if-eqz v0, :cond_1

    new-instance p3, Landroid/text/style/UnderlineSpan;

    invoke-direct {p3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "strikethrough"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p3, Landroid/text/style/StrikethroughSpan;

    invoke-direct {p3}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "http:"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p3, Landroid/text/style/URLSpan;

    invoke-direct {p3, p4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "tel:"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance p3, Landroid/text/style/URLSpan;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "mailto:"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance p3, Landroid/text/style/URLSpan;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailto:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_5
    const-string v0, "sms:"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance p3, Landroid/text/style/URLSpan;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_6
    const-string v0, "mms:"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance p3, Landroid/text/style/URLSpan;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mms:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_7
    const-string v0, "geo:"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    new-instance p3, Landroid/text/style/URLSpan;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    :cond_8
    :goto_0
    return-object p0
.end method

.method public setSize(IFIZ)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 10

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const-string p1, "\\d"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    const-string p1, "\\D"

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    const-string p1, "\\w"

    :goto_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->end(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->start(I)I

    move-result v0

    sub-int v3, v1, v0

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSize(IIFIZ)Lcom/miui/video/common/library/widget/ext/SpanText;

    goto :goto_1

    :cond_2
    return-object p0

    :cond_3
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result v6

    move-object v4, p0

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSize(IIFIZ)Lcom/miui/video/common/library/widget/ext/SpanText;

    return-object p0
.end method

.method public setSize(IIFIZ)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result v0

    add-int/2addr p2, p1

    if-ge v0, p2, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    const/16 v1, 0x21

    if-lez v0, :cond_1

    new-instance p4, Landroid/text/style/RelativeSizeSpan;

    invoke-direct {p4, p3}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {p0, p4, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    if-lez p4, :cond_2

    new-instance p3, Landroid/text/style/AbsoluteSizeSpan;

    invoke-direct {p3, p4, p5}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p0, p3, p1, p2, v1}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method public setSize([Ljava/lang/String;FIZ)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 13

    move-object v6, p0

    move-object v7, p1

    if-nez v7, :cond_0

    return-object v6

    :cond_0
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    array-length v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_2

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    aget-object v0, v7, v11

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    :goto_1
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v12, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v1

    invoke-virtual {v12, v10}, Ljava/util/regex/Matcher;->end(I)I

    move-result v0

    invoke-virtual {v12, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v2

    sub-int v2, v0, v2

    move-object v0, p0

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSize(IIFIZ)Lcom/miui/video/common/library/widget/ext/SpanText;

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method public setStyle(III)Lcom/miui/video/common/library/widget/ext/SpanText;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/common/library/widget/ext/SpanText;->length()I

    move-result v0

    add-int/2addr p2, p1

    if-ge v0, p2, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x21

    packed-switch p3, :pswitch_data_0

    new-instance p3, Landroid/text/style/StyleSpan;

    const/4 v1, 0x0

    invoke-direct {p3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :pswitch_0
    new-instance p3, Landroid/text/style/StyleSpan;

    const/4 v1, 0x3

    invoke-direct {p3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :pswitch_1
    new-instance p3, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {p3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :pswitch_2
    new-instance p3, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {p3, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/miui/video/common/library/widget/ext/SpanText;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
