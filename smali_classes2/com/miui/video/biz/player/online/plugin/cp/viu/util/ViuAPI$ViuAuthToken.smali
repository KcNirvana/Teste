.class public Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;
.super Ljava/lang/Object;
.source "ViuAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViuAuthToken"
.end annotation


# instance fields
.field public authToken:Ljava/lang/String;

.field public expirySeconds:J

.field public iid:Ljava/lang/String;

.field public sid:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;

.field public timestamp:J


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;->this$0:Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoken:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", expirySeconds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/miui/video/biz/player/online/plugin/cp/viu/util/ViuAPI$ViuAuthToken;->expirySeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
