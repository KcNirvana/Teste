.class final Lcom/miui/personalassistant/util/SearchLocationUtil$1;
.super Ljava/lang/Object;
.source "SearchLocationUtil.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/SearchLocationUtil;->getCurLocation(Landroid/content/Context;Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$1;->val$callback:Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/util/SearchLocationUtil$1;->val$callback:Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;

    invoke-interface {v0, p1}, Lcom/miui/personalassistant/util/SearchLocationUtil$CallBack;->onGetLocation(Landroid/location/Location;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
