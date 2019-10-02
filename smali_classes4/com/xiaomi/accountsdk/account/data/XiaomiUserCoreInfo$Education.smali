.class public final enum Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
.super Ljava/lang/Enum;
.source "XiaomiUserCoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Education"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum COLLEGE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum DOCTOR_AND_ABOVE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum HIGH_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum MASTER_DEGREE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum MIDDLE_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum PREP_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public static final enum VOCATIONAL_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;


# instance fields
.field public final level:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "MIDDLE_SCHOOL"

    const-string v2, "junior"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->MIDDLE_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "PREP_SCHOOL"

    const-string v2, "technical"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->PREP_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "HIGH_SCHOOL"

    const-string v2, "senior"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->HIGH_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "VOCATIONAL_SCHOOL"

    const-string v2, "college"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->VOCATIONAL_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "COLLEGE"

    const-string v2, "bachelor"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->COLLEGE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "MASTER_DEGREE"

    const-string v2, "master"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->MASTER_DEGREE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const-string v1, "DOCTOR_AND_ABOVE"

    const-string v2, "doctor"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->DOCTOR_AND_ABOVE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->MIDDLE_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->PREP_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->HIGH_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->VOCATIONAL_SCHOOL:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->COLLEGE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->MASTER_DEGREE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->DOCTOR_AND_ABOVE:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    aput-object v1, v0, v9

    sput-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->level:Ljava/lang/String;

    return-void
.end method

.method public static getEducationTypeByName(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v5, v4, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->level:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->$VALUES:[Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    invoke-virtual {v0}, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    return-object v0
.end method
