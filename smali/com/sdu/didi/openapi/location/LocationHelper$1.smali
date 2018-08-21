.class Lcom/sdu/didi/openapi/location/LocationHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/openapi/location/LocationHelper;->getLocation()Lcom/sdu/didi/openapi/location/Location;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdu/didi/openapi/location/LocationHelper;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/location/LocationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/location/LocationHelper$1;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$1;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$100(Lcom/sdu/didi/openapi/location/LocationHelper;)Lcom/sdu/didi/openapi/location/LocationManage;

    move-result-object v0

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/LocationHelper$1;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v1}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$000(Lcom/sdu/didi/openapi/location/LocationHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdu/didi/openapi/location/LocationManage;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/LocationHelper$1;->this$0:Lcom/sdu/didi/openapi/location/LocationHelper;

    invoke-static {v0}, Lcom/sdu/didi/openapi/location/LocationHelper;->access$200(Lcom/sdu/didi/openapi/location/LocationHelper;)V

    return-void
.end method
