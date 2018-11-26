.class public Lcom/miui/antispam/policy/SmartSmsFilterPolicy;
.super Lcom/miui/antispam/policy/c;
.source ""


# static fields
.field private static CONTACT_INFO_PTN:Ljava/util/regex/Pattern;


# instance fields
.field private mProxy:Lcom/miui/antispam/policy/PolicyUtils/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\\[(.+?)\\]((.|\n)*?);"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->CONTACT_INFO_PTN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/antispam/policy/e;Lcom/miui/antispam/policy/PolicyUtils/b;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/antispam/policy/c;-><init>(Landroid/content/Context;Lcom/miui/antispam/policy/e;Lcom/miui/antispam/policy/PolicyUtils/b;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;)V

    new-instance v0, Lcom/miui/antispam/policy/PolicyUtils/c;

    invoke-direct {v0, p1}, Lcom/miui/antispam/policy/PolicyUtils/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->mProxy:Lcom/miui/antispam/policy/PolicyUtils/c;

    return-void
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "number"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number LIKE \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "106"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v7

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_0
    return v6

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static isMiuiPattern(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0022

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->CONTACT_INFO_PTN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    move v0, v1

    move v3, v1

    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v6

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    if-eq v6, v0, :cond_1

    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    return v8

    :cond_2
    move v0, v1

    :cond_3
    move v3, v0

    move v0, v2

    goto :goto_1

    :cond_4
    return v1
.end method


# virtual methods
.method public dbQuery(Lcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/d;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleData(Lcom/miui/antispam/policy/PolicyUtils/a;)Lcom/miui/antispam/policy/d;
    .locals 4

    const/4 v3, 0x1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-static {v0}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "service_sms_mode"

    iget v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yr:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/miui/antispam/policy/d;

    if-ne v0, v3, :cond_3

    const/16 v0, 0x8

    :goto_0
    invoke-direct {v1, p0, v3, v0}, Lcom/miui/antispam/policy/d;-><init>(Lcom/miui/antispam/policy/c;ZI)V

    return-object v1

    :cond_1
    iget-object v0, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-static {v0}, Lmiui/provider/ExtraTelephony;->isServiceNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "stranger_sms_mode"

    iget v2, p1, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    invoke-static {v0, v1, v2, v3}, Lcom/miui/antispam/db/a;->YP(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, v3, :cond_0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public shouldFilter(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1, p3}, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->isMiuiPattern(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-static {p1, p2}, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/policy/SmartSmsFilterPolicy;->mProxy:Lcom/miui/antispam/policy/PolicyUtils/c;

    invoke-virtual {v0, p2, p3}, Lcom/miui/antispam/policy/PolicyUtils/c;->Xa(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
