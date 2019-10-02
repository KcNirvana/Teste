.class public Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;
.super Ljava/lang/Object;
.source "XiaomiUserCoreInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Flag;,
        Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;,
        Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;,
        Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Builder;
    }
.end annotation


# instance fields
.field public final avatarAddress:Ljava/lang/String;

.field public final birthday:Ljava/util/Calendar;

.field public final education:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

.field public final emailAddress:Ljava/lang/String;

.field public final gender:Lcom/xiaomi/accountsdk/account/data/Gender;

.field public final income:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

.field public final isSetSafeQuestions:Z

.field public final locale:Ljava/lang/String;

.field public final locationZipCode:Ljava/lang/String;

.field public final nickName:Ljava/lang/String;

.field public final phoneList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final region:Ljava/lang/String;

.field public final safePhone:Ljava/lang/String;

.field public final userId:Ljava/lang/String;

.field public final userName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/Gender;Ljava/util/Calendar;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/account/data/Gender;",
            "Ljava/util/Calendar;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;",
            "Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->userName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->nickName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->avatarAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->safePhone:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->phoneList:Ljava/util/ArrayList;

    iput-object p7, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->emailAddress:Ljava/lang/String;

    iput-object p8, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->gender:Lcom/xiaomi/accountsdk/account/data/Gender;

    iput-object p9, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->birthday:Ljava/util/Calendar;

    iput-boolean p10, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->isSetSafeQuestions:Z

    iput-object p11, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->locale:Ljava/lang/String;

    iput-object p12, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->region:Ljava/lang/String;

    iput-object p13, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->locationZipCode:Ljava/lang/String;

    iput-object p14, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->education:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;

    iput-object p15, p0, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;->income:Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/Gender;Ljava/util/Calendar;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$1;)V
    .locals 0

    invoke-direct/range {p0 .. p15}, Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/Gender;Ljava/util/Calendar;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Education;Lcom/xiaomi/accountsdk/account/data/XiaomiUserCoreInfo$Income;)V

    return-void
.end method
