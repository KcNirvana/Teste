.class public Lcom/miui/payment/utils/RegexUtil;
.super Ljava/lang/Object;
.source "RegexUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMatcherGroup(Ljava/util/regex/Matcher;I)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Matcher group error"

    invoke-static {v0, v2}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isRegexFinded(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 4

    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "matcher find error"

    invoke-static {v0, v3}, Lcom/miui/payment/log/Logger;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
