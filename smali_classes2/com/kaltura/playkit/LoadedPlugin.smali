.class Lcom/kaltura/playkit/LoadedPlugin;
.super Ljava/lang/Object;
.source "PlayerLoader.java"


# instance fields
.field decorator:Lcom/kaltura/playkit/PlayerDecorator;

.field plugin:Lcom/kaltura/playkit/PKPlugin;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/PKPlugin;Lcom/kaltura/playkit/PlayerDecorator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/LoadedPlugin;->plugin:Lcom/kaltura/playkit/PKPlugin;

    iput-object p2, p0, Lcom/kaltura/playkit/LoadedPlugin;->decorator:Lcom/kaltura/playkit/PlayerDecorator;

    return-void
.end method
