.class final Lcom/miui/analytics/DeviceInfoUtils$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gpsEnable:Z

.field final synthetic val$locationListener:Landroid/location/LocationListener;

.field final synthetic val$locationManager:Landroid/location/LocationManager;

.field final synthetic val$preLocationMode:I


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/LocationListener;ZLandroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/analytics/DeviceInfoUtils$4;->val$locationManager:Landroid/location/LocationManager;

    iput-object p2, p0, Lcom/miui/analytics/DeviceInfoUtils$4;->val$locationListener:Landroid/location/LocationListener;

    iput-boolean p3, p0, Lcom/miui/analytics/DeviceInfoUtils$4;->val$gpsEnable:Z

    iput-object p4, p0, Lcom/miui/analytics/DeviceInfoUtils$4;->val$context:Landroid/content/Context;

    iput p5, p0, Lcom/miui/analytics/DeviceInfoUtils$4;->val$preLocationMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/analytics/DeviceInfoUtils$4;->val$locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miui/analytics/DeviceInfoUtils$4;->val$locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    iget-boolean v0, p0, Lcom/miui/analytics/DeviceInfoUtils$4;->val$gpsEnable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/analytics/DeviceInfoUtils$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "location_mode"

    iget v2, p0, Lcom/miui/analytics/DeviceInfoUtils$4;->val$preLocationMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method
