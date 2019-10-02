.class public Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;
.super Ljava/lang/Object;
.source "ConfigEntity.java"


# static fields
.field public static final ISCLAUSEACCEPTED:Ljava/lang/String; = "isClauseAccepted"

.field public static final ISFIRSTINSTALL:Ljava/lang/String; = "isFirstInstall"


# instance fields
.field private isClauseAccepted:Z

.field private isClauseAcceptedOnce:Z

.field private isFirstInstall:Z

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;->map:Ljava/util/Map;

    return-object v0
.end method

.method public isClauseAccepted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;->isClauseAccepted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;->isClauseAcceptedOnce:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFirstInstall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;->isFirstInstall:Z

    return v0
.end method

.method public setClauseAccepted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;->isClauseAccepted:Z

    return-void
.end method

.method public setClauseAcceptedOnce()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;->isClauseAcceptedOnce:Z

    return-void
.end method

.method public setFirstInstall(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;->isFirstInstall:Z

    return-void
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;->map:Ljava/util/Map;

    return-void
.end method
