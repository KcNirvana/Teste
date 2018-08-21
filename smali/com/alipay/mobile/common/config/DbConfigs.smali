.class public final enum Lcom/alipay/mobile/common/config/DbConfigs;
.super Ljava/lang/Enum;
.source "DbConfigs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/common/config/DbConfigs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobile/common/config/DbConfigs;

.field public static final enum HTTP:Lcom/alipay/mobile/common/config/DbConfigs;


# instance fields
.field private config:Lcom/alipay/mobile/common/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/mobile/common/config/DbConfigs;

    const-string/jumbo v1, "HTTP"

    new-instance v2, Lcom/alipay/mobile/common/a$a;

    invoke-direct {v2}, Lcom/alipay/mobile/common/a$a;-><init>()V

    const-string/jumbo v3, "inside_http_cache.db"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/a$a;->a(Ljava/lang/String;)Lcom/alipay/mobile/common/a$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/alipay/mobile/common/a$a;->a(I)Lcom/alipay/mobile/common/a$a;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/common/config/b;

    invoke-direct {v3}, Lcom/alipay/mobile/common/config/b;-><init>()V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/a$a;->a(Lcom/alipay/mobile/common/a$b;)Lcom/alipay/mobile/common/a$a;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/common/config/a;

    invoke-direct {v3}, Lcom/alipay/mobile/common/config/a;-><init>()V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/a$a;->a(Lcom/alipay/mobile/common/a$c;)Lcom/alipay/mobile/common/a$a;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/common/config/DbConfigs;-><init>(Ljava/lang/String;ILcom/alipay/mobile/common/a$a;)V

    sput-object v0, Lcom/alipay/mobile/common/config/DbConfigs;->HTTP:Lcom/alipay/mobile/common/config/DbConfigs;

    new-array v0, v5, [Lcom/alipay/mobile/common/config/DbConfigs;

    sget-object v1, Lcom/alipay/mobile/common/config/DbConfigs;->HTTP:Lcom/alipay/mobile/common/config/DbConfigs;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/common/config/DbConfigs;->$VALUES:[Lcom/alipay/mobile/common/config/DbConfigs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/alipay/mobile/common/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/common/a$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/alipay/mobile/common/config/DbConfigs;->config:Lcom/alipay/mobile/common/a$a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/common/config/DbConfigs;
    .locals 1

    const-class v0, Lcom/alipay/mobile/common/config/DbConfigs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/config/DbConfigs;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/common/config/DbConfigs;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/config/DbConfigs;->$VALUES:[Lcom/alipay/mobile/common/config/DbConfigs;

    invoke-virtual {v0}, [Lcom/alipay/mobile/common/config/DbConfigs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/config/DbConfigs;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lcom/alipay/mobile/common/a$a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/config/DbConfigs;->config:Lcom/alipay/mobile/common/a$a;

    return-object v0
.end method
