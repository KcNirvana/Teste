.class public Lcom/miui/sdk/tc/DataUsage;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final RETURN_CODE_ERROR:I = 0x1

.field public static final RETURN_CODE_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DataUsage"

.field private static final synthetic aCD:[I


# instance fields
.field private mBillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

.field private mCallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

.field private mDailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

.field private mExtraPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

.field private mLeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

.field private mReturnCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/sdk/tc/DataUsage;->mReturnCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/sdk/tc/DataUsage;->parse(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic aNr()[I
    .locals 3

    sget-object v0, Lcom/miui/sdk/tc/DataUsage;->aCD:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/sdk/tc/DataUsage;->aCD:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->values()[Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->NoPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->OldPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/miui/sdk/tc/DataUsage;->aCD:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method private addPackage(Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V
    .locals 2

    invoke-static {}, Lcom/miui/sdk/tc/DataUsage;->aNr()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getType()Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mDailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/sdk/tc/DataUsage;->mDailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mDailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-static {v0, p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->-wrap0(Lcom/miui/sdk/tc/DataUsage$PackageDetail;Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mExtraPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/miui/sdk/tc/DataUsage;->mExtraPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mExtraPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-static {v0, p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->-wrap0(Lcom/miui/sdk/tc/DataUsage$PackageDetail;Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mLeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/miui/sdk/tc/DataUsage;->mLeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mLeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-static {v0, p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->-wrap0(Lcom/miui/sdk/tc/DataUsage$PackageDetail;Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mBillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/miui/sdk/tc/DataUsage;->mBillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mBillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-static {v0, p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->-wrap0(Lcom/miui/sdk/tc/DataUsage$PackageDetail;Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mCallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-nez v0, :cond_4

    iput-object p1, p0, Lcom/miui/sdk/tc/DataUsage;->mCallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mCallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-static {v0, p1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->-wrap0(Lcom/miui/sdk/tc/DataUsage$PackageDetail;Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private isReturnError()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mDailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mBillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mCallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private mergeSameKeys(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "@.*"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    :try_start_0
    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DataUsage"

    const-string/jumbo v4, "mergeSameKeys exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getBillPkg()Lcom/miui/sdk/tc/DataUsage$PackageDetail;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mBillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    return-object v0
.end method

.method public getCallTimePkg()Lcom/miui/sdk/tc/DataUsage$PackageDetail;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mCallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    return-object v0
.end method

.method public getDailyPkgDetail()Lcom/miui/sdk/tc/DataUsage$PackageDetail;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mDailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    return-object v0
.end method

.method public getDetailString()Ljava/lang/String;
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "\u89e3\u6790\u72b6\u6001:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/sdk/tc/DataUsage;->mReturnCode:I

    if-nez v0, :cond_5

    const-string/jumbo v0, "\u6210\u529f"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mDailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "\n\u65e5\u5e38\u5957\u9910:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mDailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getDetailString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mExtraPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\n\u53e0\u52a0\u5305:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mExtraPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getDetailString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mLeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "\n\u95f2\u65f6\u5957\u9910:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mLeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getDetailString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mBillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "\n\u8bdd\u8d39\u8d26\u5355:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mBillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getDetailString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mCallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\n\u901a\u8bdd\u5957\u9910:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mCallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->getDetailString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string/jumbo v0, "\u5931\u8d25"

    goto :goto_0
.end method

.method public getExtraPkgDetail()Lcom/miui/sdk/tc/DataUsage$PackageDetail;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mExtraPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    return-object v0
.end method

.method public getLeisurePkgDetail()Lcom/miui/sdk/tc/DataUsage$PackageDetail;
    .locals 1

    iget-object v0, p0, Lcom/miui/sdk/tc/DataUsage;->mLeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    return-object v0
.end method

.method public getReturnCode()I
    .locals 1

    iget v0, p0, Lcom/miui/sdk/tc/DataUsage;->mReturnCode:I

    return v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/sdk/tc/DataUsage;->mReturnCode:I

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-ge v2, v0, :cond_2

    :try_start_1
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/sdk/tc/DataUsage;->mergeSameKeys(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    move v0, v1

    :goto_1
    const/4 v5, 0x5

    if-ge v0, v5, :cond_1

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v5, Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-direct {v5, v4}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v5}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->hasValue()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v5}, Lcom/miui/sdk/tc/DataUsage;->addPackage(Lcom/miui/sdk/tc/DataUsage$PackageDetail;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v4, "DataUsage"

    const-string/jumbo v5, "merge package exception"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "DataUsage"

    const-string/jumbo v3, "parse result exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-direct {p0}, Lcom/miui/sdk/tc/DataUsage;->isReturnError()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/sdk/tc/DataUsage;->mReturnCode:I

    :goto_2
    return-void

    :cond_3
    iput v1, p0, Lcom/miui/sdk/tc/DataUsage;->mReturnCode:I

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mReturnCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/sdk/tc/DataUsage;->mReturnCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mDailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\nmDailyPkg:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mDailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mExtraPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\nmExtraPkg:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mExtraPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mLeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "\nmLeisurePkg:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mLeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mBillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "\nmBillPkg:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mBillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mCallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "\nmCallTimePkg:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/sdk/tc/DataUsage;->mCallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail;

    invoke-virtual {v1}, Lcom/miui/sdk/tc/DataUsage$PackageDetail;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
