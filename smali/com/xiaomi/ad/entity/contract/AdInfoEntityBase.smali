.class public abstract Lcom/xiaomi/ad/entity/contract/AdInfoEntityBase;
.super Lcom/xiaomi/ad/entity/contract/GsonEntityBase;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/ad/entity/contract/IAdInfoEntity;


# instance fields
.field private adPassBack:Ljava/lang/String;
    .annotation runtime Lcom/a/a/a/a;
    .end annotation

    .annotation runtime Lcom/a/a/a/b;
        a = "ex"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/a/a/a/a;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/ad/entity/contract/GsonEntityBase;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/ad/entity/contract/AdInfoEntityBase;->id:J

    return-void
.end method


# virtual methods
.method public final getAdPassBack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/ad/entity/contract/AdInfoEntityBase;->adPassBack:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/ad/internal/common/util/StringUtils;->avoidNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/ad/entity/contract/AdInfoEntityBase;->id:J

    return-wide v0
.end method
