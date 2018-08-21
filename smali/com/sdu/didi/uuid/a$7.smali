.class Lcom/sdu/didi/uuid/a$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sdu/didi/uuid/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sdu/didi/uuid/a;


# direct methods
.method constructor <init>(Lcom/sdu/didi/uuid/a;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/uuid/a$7;->a:Lcom/sdu/didi/uuid/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/sdu/didi/uuid/a$7;->a:Lcom/sdu/didi/uuid/a;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/sdu/didi/uuid/a;->k(Lcom/sdu/didi/uuid/a;F)F

    iget-object v0, p0, Lcom/sdu/didi/uuid/a$7;->a:Lcom/sdu/didi/uuid/a;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/sdu/didi/uuid/a;->l(Lcom/sdu/didi/uuid/a;F)F

    iget-object v0, p0, Lcom/sdu/didi/uuid/a$7;->a:Lcom/sdu/didi/uuid/a;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v0, v1}, Lcom/sdu/didi/uuid/a;->m(Lcom/sdu/didi/uuid/a;F)F

    return-void
.end method
