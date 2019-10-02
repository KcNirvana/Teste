.class public abstract Lcom/miui/zeus/columbus/ad/enity/AdInfoEntityBase;
.super Lcom/miui/zeus/columbus/ad/enity/GsonEntityBase;
.source "AdInfoEntityBase.java"

# interfaces
.implements Lcom/miui/zeus/columbus/ad/enity/IAdInfoEntity;


# instance fields
.field private adPassBack:Ljava/lang/String;
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/miui/zeus/google/gson/annotations/SerializedName;
        value = "ex"
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/miui/zeus/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/zeus/columbus/ad/enity/GsonEntityBase;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/zeus/columbus/ad/enity/AdInfoEntityBase;->id:J

    return-void
.end method


# virtual methods
.method public final getAdPassBack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/columbus/ad/enity/AdInfoEntityBase;->adPassBack:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/zeus/columbus/util/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/zeus/columbus/ad/enity/AdInfoEntityBase;->id:J

    return-wide v0
.end method
