.class public Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;
.super Ljava/lang/Object;
.source "SNSLoginParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appid:Ljava/lang/String;

.field private callback:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private enToken:Ljava/lang/String;

.field private expires_in:Ljava/lang/String;

.field private openId:Ljava/lang/String;

.field private sid:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->sid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->callback:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->appid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->enToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->token:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->expires_in:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->openId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public appid(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->appid:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter;-><init>(Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$1;)V

    return-object v0
.end method

.method public callback(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->callback:Ljava/lang/String;

    return-object p0
.end method

.method public code(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->code:Ljava/lang/String;

    return-object p0
.end method

.method public enToken(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->enToken:Ljava/lang/String;

    return-object p0
.end method

.method public expires_in(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->expires_in:Ljava/lang/String;

    return-object p0
.end method

.method public openId(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->openId:Ljava/lang/String;

    return-object p0
.end method

.method public sid(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->sid:Ljava/lang/String;

    return-object p0
.end method

.method public token(Ljava/lang/String;)Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/snscorelib/internal/entity/SNSLoginParameter$Builder;->token:Ljava/lang/String;

    return-object p0
.end method
