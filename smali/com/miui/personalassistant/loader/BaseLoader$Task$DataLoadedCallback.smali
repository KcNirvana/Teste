.class public Lcom/miui/personalassistant/loader/BaseLoader$Task$DataLoadedCallback;
.super Ljava/lang/Object;
.source "BaseLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/loader/BaseLoader$Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataLoadedCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/personalassistant/loader/BaseLoader$Task;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/loader/BaseLoader$Task;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task$DataLoadedCallback;->this$1:Lcom/miui/personalassistant/loader/BaseLoader$Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/miui/personalassistant/loader/BaseLoader$Task$DataLoadedCallback;->this$1:Lcom/miui/personalassistant/loader/BaseLoader$Task;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;

    invoke-static {v1, v0}, Lcom/miui/personalassistant/loader/BaseLoader$Task;->access$900(Lcom/miui/personalassistant/loader/BaseLoader$Task;Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
