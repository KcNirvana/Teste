.class Lcom/sdu/didi/openapi/location/GaodeSdk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/openapi/location/GaodeSdk;->registListener(Landroid/os/Looper;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sdu/didi/openapi/location/GaodeSdk;

.field final synthetic val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/location/GaodeSdk;Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/location/GaodeSdk$1;->this$0:Lcom/sdu/didi/openapi/location/GaodeSdk;

    iput-object p2, p0, Lcom/sdu/didi/openapi/location/GaodeSdk$1;->val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onLocationChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p3, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/GaodeSdk$1;->val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sdu/didi/openapi/location/GaodeSdk$1;->val$listener:Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;

    iget-object v1, p0, Lcom/sdu/didi/openapi/location/GaodeSdk$1;->this$0:Lcom/sdu/didi/openapi/location/GaodeSdk;

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Lcom/sdu/didi/openapi/location/GaodeSdk;->parseLocation(Ljava/lang/Object;)Lcom/sdu/didi/openapi/location/Location;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sdu/didi/openapi/location/LocationHelper$LocationListener;->location(Lcom/sdu/didi/openapi/location/Location;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
