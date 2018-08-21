.class Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;
.super Ljava/lang/Object;
.source "BaseLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/loader/BaseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateAndDescription"
.end annotation


# instance fields
.field description:Ljava/lang/String;

.field state:Lcom/miui/personalassistant/request/core/BaseResult$State;

.field final synthetic this$0:Lcom/miui/personalassistant/loader/BaseLoader;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/loader/BaseLoader;Lcom/miui/personalassistant/request/core/BaseResult$State;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;->this$0:Lcom/miui/personalassistant/loader/BaseLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;->state:Lcom/miui/personalassistant/request/core/BaseResult$State;

    iput-object p3, p0, Lcom/miui/personalassistant/loader/BaseLoader$StateAndDescription;->description:Ljava/lang/String;

    return-void
.end method
