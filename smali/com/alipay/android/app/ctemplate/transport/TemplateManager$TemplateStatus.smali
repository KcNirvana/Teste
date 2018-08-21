.class public final enum Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;
.super Ljava/lang/Enum;
.source "TemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ctemplate/transport/TemplateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TemplateStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

.field public static final enum ADD:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

.field public static final enum FORCE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

.field public static final enum UPDATE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;


# instance fields
.field public mFlag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    const-string/jumbo v1, "ADD"

    const-string/jumbo v2, "D"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    new-instance v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    const-string/jumbo v1, "UPDATE"

    const-string/jumbo v2, "U"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    new-instance v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    const-string/jumbo v1, "FORCE"

    const-string/jumbo v2, "F"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    sget-object v1, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->ADD:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->UPDATE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->FORCE:Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->$VALUES:[Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string/jumbo v0, "U"

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->mFlag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;
    .locals 1

    const-class v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->$VALUES:[Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    invoke-virtual {v0}, [Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/ctemplate/transport/TemplateManager$TemplateStatus;

    return-object v0
.end method
