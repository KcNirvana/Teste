.class Lcom/kaltura/playkit/plugins/SamplePlugin$3;
.super Lcom/kaltura/playkit/PlayerDecorator;
.source "SamplePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/plugins/SamplePlugin;->getPlayerDecorator()Lcom/kaltura/playkit/PlayerDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/plugins/SamplePlugin;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/plugins/SamplePlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/SamplePlugin$3;->this$0:Lcom/kaltura/playkit/plugins/SamplePlugin;

    invoke-direct {p0}, Lcom/kaltura/playkit/PlayerDecorator;-><init>()V

    return-void
.end method


# virtual methods
.method public play()V
    .locals 0

    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecorator;->play()V

    return-void
.end method
