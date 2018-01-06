.class public Lcom/amap/api/col/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/location/LocationManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/cd$a;,
        Lcom/amap/api/col/cd$b;,
        Lcom/amap/api/col/cd$c;,
        Lcom/amap/api/col/cd$d;
    }
.end annotation


# instance fields
.field A:Z

.field B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field C:Ljava/lang/Object;

.field D:Lcom/amap/api/col/hp;

.field E:Ljava/lang/String;

.field F:Z

.field G:Ljava/lang/String;

.field H:Z

.field I:Lcom/amap/api/col/cd$a;

.field J:Lcom/amap/api/location/AMapLocation;

.field K:Ljava/lang/String;

.field L:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Landroid/app/PendingIntent;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/fence/GeoFence;",
            ">;>;"
        }
    .end annotation
.end field

.field private M:I

.field private N:Z

.field private O:Landroid/content/Context;

.field private P:Z

.field private Q:Z

.field private R:Lorg/json/JSONArray;

.field private S:I

.field private T:Z

.field private U:Landroid/content/ServiceConnection;

.field private V:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amap/api/col/cd$c;",
            ">;"
        }
    .end annotation
.end field

.field private W:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/amap/api/col/cd$c;",
            ">;"
        }
    .end annotation
.end field

.field private X:I

.field private Y:Lcom/amap/api/location/AMapLocation;

.field a:Lcom/amap/api/location/AMapLocationClientOption;

.field public b:Lcom/amap/api/col/cd$d;

.field c:Lcom/amap/api/col/en;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/location/AMapLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/amap/api/fence/GeoFenceManagerBase;

.field f:Z

.field public g:Z

.field public h:Z

.field i:Lcom/amap/api/col/ga;

.field j:Landroid/os/Messenger;

.field k:Landroid/os/Messenger;

.field l:Landroid/content/Intent;

.field m:I

.field n:Z

.field o:J

.field p:Lcom/amap/api/location/AMapLocation;

.field q:J

.field r:J

.field public s:Z

.field t:I

.field u:I

.field v:Lcom/amap/api/col/cd$b;

.field volatile w:Lcom/amap/api/col/gt;

.field volatile x:Z

.field volatile y:F

.field volatile z:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/amap/api/col/cd;->M:I

    iput-boolean v3, p0, Lcom/amap/api/col/cd;->N:Z

    iput-object v2, p0, Lcom/amap/api/col/cd;->c:Lcom/amap/api/col/en;

    iput-boolean v3, p0, Lcom/amap/api/col/cd;->P:Z

    iput-boolean v3, p0, Lcom/amap/api/col/cd;->Q:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/amap/api/col/cd;->f:Z

    iput-boolean v1, p0, Lcom/amap/api/col/cd;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/col/cd;->h:Z

    iput-object v2, p0, Lcom/amap/api/col/cd;->j:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/amap/api/col/cd;->k:Landroid/os/Messenger;

    iput-object v2, p0, Lcom/amap/api/col/cd;->l:Landroid/content/Intent;

    iput v3, p0, Lcom/amap/api/col/cd;->m:I

    iput-boolean v3, p0, Lcom/amap/api/col/cd;->n:Z

    iput-wide v4, p0, Lcom/amap/api/col/cd;->o:J

    iput-object v2, p0, Lcom/amap/api/col/cd;->p:Lcom/amap/api/location/AMapLocation;

    iput-wide v4, p0, Lcom/amap/api/col/cd;->q:J

    iput-wide v4, p0, Lcom/amap/api/col/cd;->r:J

    iput-boolean v3, p0, Lcom/amap/api/col/cd;->s:Z

    iput-object v2, p0, Lcom/amap/api/col/cd;->R:Lorg/json/JSONArray;

    iput v3, p0, Lcom/amap/api/col/cd;->S:I

    iput-boolean v1, p0, Lcom/amap/api/col/cd;->T:Z

    const/16 v0, 0xf0

    iput v0, p0, Lcom/amap/api/col/cd;->t:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/amap/api/col/cd;->u:I

    iput-object v2, p0, Lcom/amap/api/col/cd;->v:Lcom/amap/api/col/cd$b;

    iput-object v2, p0, Lcom/amap/api/col/cd;->w:Lcom/amap/api/col/gt;

    iput-boolean v3, p0, Lcom/amap/api/col/cd;->x:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/cd;->y:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/cd;->z:D

    iput-boolean v3, p0, Lcom/amap/api/col/cd;->A:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Hight_Accuracy:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/col/cd;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cd;->C:Ljava/lang/Object;

    iput-object v2, p0, Lcom/amap/api/col/cd;->D:Lcom/amap/api/col/hp;

    iput-object v2, p0, Lcom/amap/api/col/cd;->E:Ljava/lang/String;

    new-instance v0, Lcom/amap/api/col/ce;

    invoke-direct {v0, p0}, Lcom/amap/api/col/ce;-><init>(Lcom/amap/api/col/cd;)V

    iput-object v0, p0, Lcom/amap/api/col/cd;->U:Landroid/content/ServiceConnection;

    iput-boolean v3, p0, Lcom/amap/api/col/cd;->F:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cd;->V:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cd;->W:Ljava/util/LinkedList;

    iput v3, p0, Lcom/amap/api/col/cd;->X:I

    iput-object v2, p0, Lcom/amap/api/col/cd;->Y:Lcom/amap/api/location/AMapLocation;

    iput-object v2, p0, Lcom/amap/api/col/cd;->G:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/amap/api/col/cd;->H:Z

    iput-object v2, p0, Lcom/amap/api/col/cd;->I:Lcom/amap/api/col/cd$a;

    iput-object v2, p0, Lcom/amap/api/col/cd;->J:Lcom/amap/api/location/AMapLocation;

    iput-object v2, p0, Lcom/amap/api/col/cd;->K:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cd;->L:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/col/cd;->l:Landroid/content/Intent;

    invoke-static {}, Lcom/amap/api/col/dh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "loc"

    invoke-static {v0}, Lcom/amap/api/col/dh;->a(Ljava/lang/String;)Lcom/amap/api/col/de;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/col/hr;->a(Landroid/content/Context;Lcom/amap/api/col/de;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/amap/api/col/cd;->h()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Landroid/os/Looper;)Lcom/amap/api/col/cd$a;
    .locals 2

    iget-object v1, p0, Lcom/amap/api/col/cd;->C:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/amap/api/col/cd$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/col/cd$a;-><init>(Lcom/amap/api/col/cd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/cd;->I:Lcom/amap/api/col/cd$a;

    iget-object v0, p0, Lcom/amap/api/col/cd;->I:Lcom/amap/api/col/cd$a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;I)Lcom/amap/api/col/cd$c;
    .locals 1

    new-instance v0, Lcom/amap/api/col/cd$c;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/col/cd$c;-><init>(Lcom/amap/api/location/AMapLocation;I)V

    return-object v0
.end method

.method private a(I)V
    .locals 2

    iget-object v1, p0, Lcom/amap/api/col/cd;->C:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->I:Lcom/amap/api/col/cd$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cd;->I:Lcom/amap/api/col/cd$a;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/cd$a;->removeMessages(I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(ILandroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_0

    :try_start_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/dh;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cd;->E:Ljava/lang/String;

    :cond_1
    const-string v0, "c"

    iget-object v1, p0, Lcom/amap/api/col/cd;->E:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/amap/api/col/cd;->k:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v1, p0, Lcom/amap/api/col/cd;->j:Landroid/os/Messenger;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/cd;->j:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "sendLocMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/Object;J)V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/col/cd;->C:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->I:Lcom/amap/api/col/cd$a;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amap/api/col/cd;->I:Lcom/amap/api/col/cd$a;

    invoke-virtual {v2, v0, p3, p4}, Lcom/amap/api/col/cd$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/app/PendingIntent;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->L:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cd;->e:Lcom/amap/api/fence/GeoFenceManagerBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cd;->L:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/fence/GeoFence;

    iget-object v2, p0, Lcom/amap/api/col/cd;->e:Lcom/amap/api/fence/GeoFenceManagerBase;

    invoke-interface {v2, v0}, Lcom/amap/api/fence/GeoFenceManagerBase;->removeGeoFence(Lcom/amap/api/fence/GeoFence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doRemoveGeoFenceAlert2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cd;->L:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    const-class v1, Lcom/amap/api/location/APSService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    :try_start_2
    const-string v1, "a"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "b"

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/dh;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/cd;->U:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-void

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/cu;->f(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v2, "AMapLocationManager"

    const-string v3, "startServiceImpl p2"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startServiceImpl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/amap/api/col/cd;->M:I

    if-eqz p1, :cond_2

    const-string v0, "locationJson"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/amap/api/location/AMapLocation;

    const-string v3, ""

    invoke-direct {v0, v3}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/amap/api/col/dh;->a(Lcom/amap/api/location/AMapLocation;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v2, "nb"

    invoke-static {v3, v2}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "nb"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/cd;->K:Ljava/lang/String;

    :goto_0
    const-string v2, "originalLocType"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/amap/api/col/cd;->S:I

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getAdCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v0, p0, Lcom/amap/api/col/cd;->J:Lcom/amap/api/location/AMapLocation;

    :cond_0
    const-string v2, "fixlastlocation"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/amap/api/col/cd;->F:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/amap/api/col/cd;->K:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "AMapLocationManager$MHandler"

    const-string v3, "handleMessage LBS_LOCATIONSUCCESS"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v2

    iput v2, p0, Lcom/amap/api/col/cd;->S:I

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/amap/api/col/cd;->a(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v3, p0, Lcom/amap/api/col/cd;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v2, v3}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/cd;->c:Lcom/amap/api/col/en;

    iget v2, v2, Lcom/amap/api/col/en;->j:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move-object v2, v0

    move-object v0, v1

    :goto_2
    iget-boolean v3, p0, Lcom/amap/api/col/cd;->h:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/amap/api/col/cd;->j:Landroid/os/Messenger;

    if-eqz v3, :cond_3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "extraJson"

    iget-object v5, p0, Lcom/amap/api/col/cd;->G:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6, v3}, Lcom/amap/api/col/cd;->a(ILandroid/os/Bundle;)V

    iput-boolean v6, p0, Lcom/amap/api/col/cd;->h:Z

    :cond_3
    iget-object v3, p0, Lcom/amap/api/col/cd;->J:Lcom/amap/api/location/AMapLocation;

    invoke-direct {p0, v2, v3}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V

    invoke-direct {p0, v2, v0}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;)V

    :try_start_2
    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/cd;->z:D

    iget-boolean v0, p0, Lcom/amap/api/col/cd;->x:Z

    if-nez v0, :cond_4

    const/16 v0, 0x3fb

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p0, v0, v2, v4, v5}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_3
    iget-boolean v0, p0, Lcom/amap/api/col/cd;->T:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    invoke-direct {p0, v0, v1}, Lcom/amap/api/col/cd;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    :try_start_3
    iget-object v2, p0, Lcom/amap/api/col/cd;->c:Lcom/amap/api/col/en;

    iget v2, v2, Lcom/amap/api/col/en;->j:I

    if-nez v2, :cond_6

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    :goto_4
    const-string v3, "AMapLocationManager$ActionHandler"

    const-string v4, "handleMessage GPS_LOCATIONSUCCESS"

    invoke-static {v0, v3, v4}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocation;->setGpsAccuracyStatus(I)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_4
.end method

.method static synthetic a(Lcom/amap/api/col/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->l()V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cd;ILjava/lang/Object;J)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cd;Landroid/app/PendingIntent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->a(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cd;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->a(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cd;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cd;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cd;Lcom/amap/api/fence/GeoFence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/fence/GeoFence;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cd;Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cd;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/location/AMapLocationListener;)V

    return-void
.end method

.method private a(Lcom/amap/api/fence/GeoFence;)V
    .locals 9

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->e:Lcom/amap/api/fence/GeoFenceManagerBase;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/hu;->g(Landroid/content/Context;)Lcom/amap/api/fence/GeoFenceManagerBase;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cd;->e:Lcom/amap/api/fence/GeoFenceManagerBase;

    iget-object v0, p0, Lcom/amap/api/col/cd;->e:Lcom/amap/api/fence/GeoFenceManagerBase;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/amap/api/fence/GeoFenceManagerBase;->setActivateAction(I)V

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/fence/GeoFence;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/cd;->L:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/cd;->L:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    :goto_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-object v1, p0, Lcom/amap/api/col/cd;->L:Ljava/util/Hashtable;

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/amap/api/col/cd;->e:Lcom/amap/api/fence/GeoFenceManagerBase;

    invoke-virtual {p1}, Lcom/amap/api/fence/GeoFence;->getCenter()Lcom/amap/api/location/DPoint;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amap/api/fence/GeoFence;->getRadius()F

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/amap/api/fence/GeoFence;->getFenceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amap/api/fence/GeoFence;->getExpiration()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/amap/api/fence/GeoFence;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/amap/api/fence/GeoFenceManagerBase;->addRoundGeoFence(Lcom/amap/api/location/DPoint;FLjava/lang/String;Ljava/lang/String;JLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doAddGeoFenceAlert"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/fence/GeoFence;

    invoke-virtual {v1}, Lcom/amap/api/fence/GeoFence;->getFenceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amap/api/fence/GeoFence;->getFenceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :goto_4
    move-object v2, v1

    goto :goto_3

    :cond_4
    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto :goto_4
.end method

.method private a(Lcom/amap/api/location/AMapLocation;)V
    .locals 3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->p:Lcom/amap/api/location/AMapLocation;

    invoke-direct {p0, v0, p1}, Lcom/amap/api/col/cd;->b(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/cd;->d(Lcom/amap/api/location/AMapLocation;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "handleMessage"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)V
    .locals 7

    const/16 v6, 0xa

    invoke-static {p1}, Lcom/amap/api/col/hu;->a(Lcom/amap/api/location/AMapLocation;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "lat"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "lon"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_2
    iget-object v1, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    invoke-direct {p0, v6, v0}, Lcom/amap/api/col/cd;->a(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isNeedAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [D

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    aput-wide v4, v1, v2

    invoke-static {v1}, Lcom/amap/api/col/hu;->a([D)F

    move-result v1

    iget v2, p0, Lcom/amap/api/col/cd;->t:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_4

    invoke-static {p1, p2}, Lcom/amap/api/col/dh;->a(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;

    :cond_4
    iget v2, p0, Lcom/amap/api/col/cd;->u:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-direct {p0, v6, v0}, Lcom/amap/api/col/cd;->a(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/location/AMapLocation;Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/dh;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    const-string v1, "loc"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/hr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    const-string v1, "loc"

    const-string v2, "amaplocation is null"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/hr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "handlerLocation part3"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    :try_start_1
    new-instance p1, Lcom/amap/api/location/AMapLocation;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    :cond_3
    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "lbs"

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setProvider(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/col/cd;->Q:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/location/AMapLocation;)V

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/cd;->q:J

    iput-object p1, p0, Lcom/amap/api/col/cd;->p:Lcom/amap/api/location/AMapLocation;

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocation;->setTime(J)V

    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->b(Lcom/amap/api/location/AMapLocation;)V

    iget-boolean v0, p0, Lcom/amap/api/col/cd;->A:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/amap/api/col/dh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cd;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/cd;->c:Lcom/amap/api/col/en;

    iget v0, v0, Lcom/amap/api/col/en;->j:I

    invoke-static {p1, v0}, Lcom/amap/api/col/hu;->a(Landroid/location/Location;I)Z

    move-result v0

    :cond_6
    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/amap/api/col/cd;->F:Z

    if-nez v0, :cond_7

    new-instance v0, Lcom/amap/api/col/hd;

    invoke-direct {v0}, Lcom/amap/api/col/hd;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amap/api/col/hd;->a(Lcom/amap/api/location/AMapLocation;)V

    iget-object v1, p0, Lcom/amap/api/col/cd;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/hd;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/cd;->i:Lcom/amap/api/col/ga;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ga;->a(Lcom/amap/api/col/hd;)V

    :cond_7
    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->c(Lcom/amap/api/location/AMapLocation;)V

    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    iget v1, p0, Lcom/amap/api/col/cd;->S:I

    invoke-static {v0, v1, p1}, Lcom/amap/api/col/hp;->a(Landroid/content/Context;ILcom/amap/api/location/AMapLocation;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_8
    :goto_1
    :try_start_3
    iget-boolean v0, p0, Lcom/amap/api/col/cd;->A:Z

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/amap/api/col/dh;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_9
    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/hr;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->o()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "handlerLocation part2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method private a(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private a(Z)V
    .locals 2

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/cd;->o:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/cd;->n:Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/amap/api/col/cd;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/cd;->M:I

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/cd;->P:Z

    return p1
.end method

.method private b(Lcom/amap/api/location/AMapLocation;Lcom/amap/api/location/AMapLocation;)Lcom/amap/api/location/AMapLocation;
    .locals 10

    iput-object p2, p0, Lcom/amap/api/col/cd;->Y:Lcom/amap/api/location/AMapLocation;

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/amap/api/col/cd;->r:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/cd;->X:I

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/amap/api/col/cd;->M:I

    const/4 v4, 0x3

    if-gt v1, v4, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-ltz v1, :cond_2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    :cond_2
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/amap/api/location/AMapLocation;->setAccuracy(F)V

    :cond_3
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLocationType()I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_5

    iget-wide v6, p0, Lcom/amap/api/col/cd;->q:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1388

    cmp-long v1, v6, v8

    if-gez v1, :cond_7

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v1

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v6

    add-float/2addr v1, v6

    long-to-float v4, v4

    mul-float/2addr v1, v4

    const/high16 v4, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v5

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getAccuracy()F

    move-result v6

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    const v5, 0x453b8000    # 3000.0f

    const/4 v6, 0x4

    new-array v6, v6, [D

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x2

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    invoke-virtual {p2}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v8

    aput-wide v8, v6, v7

    invoke-static {v6}, Lcom/amap/api/col/hu;->a([D)F

    move-result v6

    add-float/2addr v1, v4

    add-float/2addr v1, v5

    cmpl-float v1, v6, v1

    if-lez v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    :goto_1
    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amap/api/col/cd;->r:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_6

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/cd;->r:J

    :cond_6
    iget-wide v0, p0, Lcom/amap/api/col/cd;->r:J

    sub-long v0, v2, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/cd;->N:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/cd;->X:I

    move-object p2, p1

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    iput v1, p0, Lcom/amap/api/col/cd;->M:I

    goto :goto_1
.end method

.method static synthetic b(Lcom/amap/api/col/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->m()V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/cd;Lcom/amap/api/fence/GeoFence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->b(Lcom/amap/api/fence/GeoFence;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/cd;Lcom/amap/api/location/AMapLocationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->b(Lcom/amap/api/location/AMapLocationListener;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/cd;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/col/cd;->a(Z)V

    return-void
.end method

.method private b(Lcom/amap/api/fence/GeoFence;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/fence/GeoFence;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/fence/GeoFence;->getFenceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/cd;->L:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/cd;->L:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/cd;->e:Lcom/amap/api/fence/GeoFenceManagerBase;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/cd;->L:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/fence/GeoFence;

    invoke-virtual {v0}, Lcom/amap/api/fence/GeoFence;->getFenceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v0}, Lcom/amap/api/col/cd;->c(Lcom/amap/api/fence/GeoFence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    iget-object v3, p0, Lcom/amap/api/col/cd;->e:Lcom/amap/api/fence/GeoFenceManagerBase;

    invoke-interface {v3, v0}, Lcom/amap/api/fence/GeoFenceManagerBase;->removeGeoFence(Lcom/amap/api/fence/GeoFence;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doRemoveGeoFenceAlert"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/amap/api/location/AMapLocation;)V
    .locals 2

    :try_start_0
    const-string v0, "gps"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/col/hu;->b(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/api/location/AMapLocation;->setAltitude(D)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getBearing()F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setBearing(F)V

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getSpeed()F

    move-result v0

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(F)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/location/AMapLocation;->setSpeed(F)V

    iget-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationListener;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0, p1}, Lcom/amap/api/location/AMapLocationListener;->onLocationChanged(Lcom/amap/api/location/AMapLocation;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_1
    return-void
.end method

.method private b(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/cd;->o()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/amap/api/col/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->n()V

    return-void
.end method

.method private c(Lcom/amap/api/location/AMapLocation;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/hl;->o()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/amap/api/col/cd;->S:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    :goto_1
    :pswitch_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cd;->R:Lorg/json/JSONArray;

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cd;->R:Lorg/json/JSONArray;

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "lon"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "lat"

    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocation;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    invoke-static {}, Lcom/amap/api/col/hu;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amap/api/col/cd;->R:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cd;->R:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/amap/api/col/cd;->R:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {}, Lcom/amap/api/col/hl;->p()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->k()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "handlerOfflineLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/amap/api/col/cd;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/cd;->T:Z

    return p1
.end method

.method private c(Lcom/amap/api/fence/GeoFence;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/amap/api/fence/GeoFence;->getExpiration()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/fence/GeoFence;->getExpiration()J

    move-result-wide v0

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/amap/api/col/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->o()V

    return-void
.end method

.method private d(Lcom/amap/api/location/AMapLocation;)V
    .locals 3

    iget v0, p0, Lcom/amap/api/col/cd;->X:I

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/location/AMapLocation;I)Lcom/amap/api/col/cd$c;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cd;->Y:Lcom/amap/api/location/AMapLocation;

    iget v2, p0, Lcom/amap/api/col/cd;->X:I

    invoke-direct {p0, v1, v2}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/location/AMapLocation;I)Lcom/amap/api/col/cd$c;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/col/cd;->N:Z

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/cd;->V:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/cd;->V:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cd;->V:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/cd;->V:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->V:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/cd;->W:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/cd;->V:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/amap/api/col/cd;->W:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/cd;->V:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/cd$c;

    invoke-virtual {v0}, Lcom/amap/api/col/cd$c;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/amap/api/col/cd;->X:I

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/cd;->V:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/cd;->W:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/cd;->W:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/cd;->W:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cd;->W:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string v0, "gpsstatistics"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/col/hp;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cd;->V:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/cd;->W:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/cd;->N:Z

    :cond_5
    return-void
.end method

.method static synthetic e(Lcom/amap/api/col/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->r()V

    return-void
.end method

.method static synthetic f(Lcom/amap/api/col/cd;)Z
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/cd;->j()Z

    move-result v0

    return v0
.end method

.method private g()V
    .locals 3

    iget-object v1, p0, Lcom/amap/api/col/cd;->C:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->I:Lcom/amap/api/col/cd$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cd;->I:Lcom/amap/api/col/cd$a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amap/api/col/cd$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cd;->I:Lcom/amap/api/col/cd$a;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic g(Lcom/amap/api/col/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->s()V

    return-void
.end method

.method private h()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/amap/api/col/cd$d;

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/cd$d;-><init>(Lcom/amap/api/col/cd;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/cd;->b:Lcom/amap/api/col/cd$d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v0, Lcom/amap/api/col/cd$b;

    const-string v1, "amapLocManagerThread"

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/cd$b;-><init>(Ljava/lang/String;Lcom/amap/api/col/cd;)V

    iput-object v0, p0, Lcom/amap/api/col/cd;->v:Lcom/amap/api/col/cd$b;

    iget-object v0, p0, Lcom/amap/api/col/cd;->v:Lcom/amap/api/col/cd$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/amap/api/col/cd$b;->setPriority(I)V

    iget-object v0, p0, Lcom/amap/api/col/cd;->v:Lcom/amap/api/col/cd$b;

    invoke-virtual {v0}, Lcom/amap/api/col/cd$b;->start()V

    iget-object v0, p0, Lcom/amap/api/col/cd;->v:Lcom/amap/api/col/cd$b;

    invoke-virtual {v0}, Lcom/amap/api/col/cd$b;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/cd;->a(Landroid/os/Looper;)Lcom/amap/api/col/cd$a;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cd;->I:Lcom/amap/api/col/cd$a;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/amap/api/col/cd;->b:Lcom/amap/api/col/cd$d;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/api/col/cd;->k:Landroid/os/Messenger;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    new-instance v0, Lcom/amap/api/col/ga;

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/ga;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/cd;->i:Lcom/amap/api/col/ga;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    new-instance v0, Lcom/amap/api/col/en;

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/cd;->b:Lcom/amap/api/col/cd$d;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/en;-><init>(Landroid/content/Context;Lcom/amap/api/col/cd$d;)V

    iput-object v0, p0, Lcom/amap/api/col/cd;->c:Lcom/amap/api/col/en;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    new-instance v0, Lcom/amap/api/col/gt;

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/col/gt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/cd;->w:Lcom/amap/api/col/gt;

    iget-object v0, p0, Lcom/amap/api/col/cd;->D:Lcom/amap/api/col/hp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/hp;

    invoke-direct {v0}, Lcom/amap/api/col/hp;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/cd;->D:Lcom/amap/api/col/hp;

    :cond_0
    return-void

    :cond_1
    :try_start_4
    new-instance v0, Lcom/amap/api/col/cd$d;

    invoke-direct {v0, p0}, Lcom/amap/api/col/cd$d;-><init>(Lcom/amap/api/col/cd;)V

    iput-object v0, p0, Lcom/amap/api/col/cd;->b:Lcom/amap/api/col/cd$d;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 5"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "init 3"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method static synthetic h(Lcom/amap/api/col/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->u()V

    return-void
.end method

.method static synthetic i(Lcom/amap/api/col/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->p()V

    return-void
.end method

.method private i()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/cd;->j:Landroid/os/Messenger;

    if-nez v3, :cond_1

    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/cd;->j:Landroid/os/Messenger;

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/amap/api/location/AMapLocation;

    const-string v4, ""

    invoke-direct {v3, v4}, Lcom/amap/api/location/AMapLocation;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setErrorCode(I)V

    const-string v4, "\u8bf7\u68c0\u67e5\u914d\u7f6e\u6587\u4ef6\u662f\u5426\u914d\u7f6e\u670d\u52a1"

    invoke-virtual {v3, v4}, Lcom/amap/api/location/AMapLocation;->setLocationDetail(Ljava/lang/String;)V

    const-string v4, "locationJson"

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/amap/api/location/AMapLocation;->toStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/col/cd;->b:Lcom/amap/api/col/cd$d;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/cd$d;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "checkAPSManager"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/amap/api/col/cd;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->q()V

    return-void
.end method

.method private j()Z
    .locals 4

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/cd;->o:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized k()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/hl;->o()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cd;->R:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cd;->R:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "loc"

    invoke-static {v0}, Lcom/amap/api/col/dh;->a(Ljava/lang/String;)Lcom/amap/api/col/de;

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/fx;

    iget-object v2, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/cd;->R:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/amap/api/col/fx;-><init>(Landroid/content/Context;Lcom/amap/api/col/de;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/col/fy;->a(Lcom/amap/api/col/fx;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cd;->R:Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "AMapLocationManager"

    const-string v2, "writeOfflineLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    move v1, v0

    :goto_0
    if-eqz v1, :cond_4

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/amap/api/col/hl;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v2, ""

    invoke-static {}, Lcom/amap/api/col/hl;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/amap/api/col/hl;->h()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/amap/api/col/hl;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amap/api/col/cf;

    invoke-direct {v3, p0}, Lcom/amap/api/col/cf;-><init>(Lcom/amap/api/col/cd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-static {}, Lcom/amap/api/col/hl;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/amap/api/col/cg;

    invoke-direct {v3, p0}, Lcom/amap/api/col/cg;-><init>(Lcom/amap/api/col/cd;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d3

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_3

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/amap/api/col/cd;->m()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->m()V

    const-string v1, "AMapLocationManager"

    const-string v2, "showDialog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private m()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.autonavi.minimap"

    invoke-static {}, Lcom/amap/api/col/hl;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/amap/api/col/hl;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {}, Lcom/amap/api/col/hl;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "callAMap part2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private n()V
    .locals 7

    const/16 v6, 0x3f7

    const/16 v5, 0x3f8

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v2}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    :cond_0
    iget-boolean v2, p0, Lcom/amap/api/col/cd;->Q:Z

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/amap/api/col/cd;->Q:Z

    sget-object v2, Lcom/amap/api/col/ch;->a:[I

    iget-object v3, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/col/cd;->e()V

    goto :goto_0

    :pswitch_0
    const/16 v2, 0x3f9

    invoke-direct {p0, v2, v4, v0, v1}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V

    invoke-direct {p0, v5, v4, v0, v1}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, v5}, Lcom/amap/api/col/cd;->a(I)V

    invoke-direct {p0, v6, v4, v0, v1}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v6, v4, v0, v1}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V

    iget-object v2, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isGpsFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v0, 0x7530

    :cond_3
    invoke-direct {p0, v5, v4, v0, v1}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private o()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->c:Lcom/amap/api/col/en;

    invoke-virtual {v0}, Lcom/amap/api/col/en;->a()V

    const/16 v0, 0x3f8

    invoke-direct {p0, v0}, Lcom/amap/api/col/cd;->a(I)V

    iget-object v0, p0, Lcom/amap/api/col/cd;->V:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/cd;->W:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/cd;->n:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/cd;->Q:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/cd;->o:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/cd;->m:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cd;->p:Lcom/amap/api/location/AMapLocation;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/cd;->q:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/cd;->N:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/cd;->X:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/cd;->M:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/cd;->Y:Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->j:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/cd;->m:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extraJson"

    iget-object v2, p0, Lcom/amap/api/col/cd;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/cd;->a(ILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/amap/api/col/cd;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/cd;->m:I

    iget v0, p0, Lcom/amap/api/col/cd;->m:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x32

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extraJson"

    iget-object v2, p0, Lcom/amap/api/col/cd;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/cd;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopAssistantLocationImpl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private r()V
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    iput-boolean v1, p0, Lcom/amap/api/col/cd;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/col/cd;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/col/cd;->P:Z

    invoke-direct {p0}, Lcom/amap/api/col/cd;->o()V

    iget-object v0, p0, Lcom/amap/api/col/cd;->D:Lcom/amap/api/col/hp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cd;->D:Lcom/amap/api/col/hp;

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/hp;->b(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/hp;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/amap/api/col/cd;->k()V

    iget-object v0, p0, Lcom/amap/api/col/cd;->e:Lcom/amap/api/fence/GeoFenceManagerBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cd;->e:Lcom/amap/api/fence/GeoFenceManagerBase;

    invoke-interface {v0}, Lcom/amap/api/fence/GeoFenceManagerBase;->removeGeoFence()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cd;->U:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    iget-object v1, p0, Lcom/amap/api/col/cd;->U:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v4, p0, Lcom/amap/api/col/cd;->d:Ljava/util/ArrayList;

    :cond_3
    iput-object v4, p0, Lcom/amap/api/col/cd;->U:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Lcom/amap/api/col/cd;->g()V

    iget-object v0, p0, Lcom/amap/api/col/cd;->v:Lcom/amap/api/col/cd$b;

    if-eqz v0, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->v:Lcom/amap/api/col/cd$b;

    const-class v1, Landroid/os/HandlerThread;

    const-string v2, "quitSafely"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    iput-object v4, p0, Lcom/amap/api/col/cd;->v:Lcom/amap/api/col/cd$b;

    iget-object v0, p0, Lcom/amap/api/col/cd;->b:Lcom/amap/api/col/cd$d;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/cd;->b:Lcom/amap/api/col/cd$d;

    invoke-virtual {v0, v4}, Lcom/amap/api/col/cd$d;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/cd;->i:Lcom/amap/api/col/ga;

    invoke-virtual {v0}, Lcom/amap/api/col/ga;->b()V

    iput-object v4, p0, Lcom/amap/api/col/cd;->i:Lcom/amap/api/col/ga;

    invoke-virtual {p0}, Lcom/amap/api/col/cd;->f()V

    iget-object v0, p0, Lcom/amap/api/col/cd;->w:Lcom/amap/api/col/gt;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/cd;->w:Lcom/amap/api/col/gt;

    invoke-virtual {v0}, Lcom/amap/api/col/gt;->f()V

    iput-object v4, p0, Lcom/amap/api/col/cd;->w:Lcom/amap/api/col/gt;

    :cond_6
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/amap/api/col/cd;->v:Lcom/amap/api/col/cd$b;

    invoke-virtual {v0}, Lcom/amap/api/col/cd$b;->quit()Z

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/cd;->v:Lcom/amap/api/col/cd$b;

    invoke-virtual {v0}, Lcom/amap/api/col/cd$b;->quit()Z

    goto :goto_0
.end method

.method private s()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/cd;->g:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/cd;->g:Z

    invoke-virtual {p0}, Lcom/amap/api/col/cd;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/cd;->t()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/col/cd;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extraJson"

    iget-object v2, p0, Lcom/amap/api/col/cd;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isSensorEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "e"

    iget-wide v2, p0, Lcom/amap/api/col/cd;->z:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "f"

    iget v2, p0, Lcom/amap/api/col/cd;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_3
    invoke-direct {p0}, Lcom/amap/api/col/cd;->j()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/amap/api/col/cd;->n:Z

    if-nez v1, :cond_0

    :cond_4
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/amap/api/col/cd;->a(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "AMapLocationManager"

    const-string v2, "doLBSLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amap/api/col/cd;->t()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/amap/api/col/cd;->t()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method private t()V
    .locals 6

    const-wide/16 v0, 0x3e8

    iget-object v2, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v2}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v2

    sget-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Device_Sensors:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    if-eq v2, v3, :cond_0

    const/16 v2, 0x3f8

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v4}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    :goto_0
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getInterval()J

    move-result-wide v0

    goto :goto_0
.end method

.method private u()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/amap/api/col/dh;->a(Lcom/amap/api/location/AMapLocationClientOption;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cd;->G:Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/cd;->c:Lcom/amap/api/col/en;

    iget-object v1, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/en;->b(Lcom/amap/api/location/AMapLocationClientOption;)V

    iget-boolean v0, p0, Lcom/amap/api/col/cd;->Q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/cd;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/cd;->o()V

    invoke-direct {p0}, Lcom/amap/api/col/cd;->n()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->getLocationMode()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cd;->B:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-object v0, p0, Lcom/amap/api/col/cd;->D:Lcom/amap/api/col/hp;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isOnceLocation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/cd;->D:Lcom/amap/api/col/hp;

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/hp;->a(Landroid/content/Context;I)V

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->D:Lcom/amap/api/col/hp;

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    iget-object v2, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/hp;->a(Landroid/content/Context;Lcom/amap/api/location/AMapLocationClientOption;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/cd;->D:Lcom/amap/api/col/hp;

    iget-object v1, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/hp;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/amap/api/col/gk;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    .locals 9

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Lcom/amap/api/col/ho;

    invoke-direct {v5}, Lcom/amap/api/col/ho;-><init>()V

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/amap/api/col/ho;->a(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/amap/api/location/AMapLocationClientOption;->getAPIKEY()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/amap/api/col/cw;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    iget-object v2, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/amap/api/col/dh;->a(Lcom/amap/api/location/AMapLocationClientOption;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cd;->G:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/amap/api/col/cd;->G:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-virtual {p1, v2, v0}, Lcom/amap/api/col/gk;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {p1}, Lcom/amap/api/col/gk;->j()Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    invoke-static {v2}, Lcom/amap/api/col/hu;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p1, v0}, Lcom/amap/api/col/gk;->b(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v2

    move v3, v4

    :cond_2
    :goto_2
    :try_start_6
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/amap/api/col/ho;->b(J)V

    invoke-virtual {v5, v2}, Lcom/amap/api/col/ho;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V

    if-eqz v2, :cond_a

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->toStr(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    :goto_3
    const/4 v1, 0x0

    :try_start_7
    iput-boolean v1, p0, Lcom/amap/api/col/cd;->F:Z

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/cd;->a:Lcom/amap/api/location/AMapLocationClientOption;

    invoke-virtual {v1}, Lcom/amap/api/location/AMapLocationClientOption;->isLocationCacheEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/cd;->i:Lcom/amap/api/col/ga;

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v1

    if-eq v1, v4, :cond_3

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I

    move-result v1

    const/4 v4, 0x7

    if-eq v1, v4, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/cd;->i:Lcom/amap/api/col/ga;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amap/api/col/ga;->a(Ljava/lang/String;)Lcom/amap/api/location/AMapLocation;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/amap/api/col/cd;->F:Z

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/amap/api/location/AMapLocation;->toStr(I)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    :cond_3
    :goto_4
    :try_start_8
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_6

    const-string v4, "originalLocType"

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "locationJson"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const-string v0, "fixlastlocation"

    iget-boolean v4, p0, Lcom/amap/api/col/cd;->F:Z

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/amap/api/col/cd;->b:Lcom/amap/api/col/cd$d;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/cd$d;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_6
    :try_start_9
    iget-object v0, p0, Lcom/amap/api/col/cd;->O:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/amap/api/col/hp;->a(Landroid/content/Context;Lcom/amap/api/col/ho;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_7
    if-eqz v3, :cond_9

    const/4 v0, 0x1

    :try_start_a
    invoke-virtual {p1, v0}, Lcom/amap/api/col/gk;->b(Z)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v1

    :goto_8
    :try_start_b
    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getErrorCode()I
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v0

    if-nez v0, :cond_8

    :try_start_c
    invoke-virtual {p1, v1}, Lcom/amap/api/col/gk;->a(Lcom/autonavi/aps/amapapi/model/AMapLocationServer;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_9
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object v0, v1

    :goto_9
    if-eqz p1, :cond_4

    :try_start_d
    invoke-virtual {p1}, Lcom/amap/api/col/gk;->c()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    :cond_4
    :goto_a
    return-object v0

    :catch_0
    move-exception v0

    :try_start_e
    const-string v2, "AMapLocationManager"

    const-string v6, "apsLocation setAuthKey"

    invoke-static {v0, v2, v6}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    :goto_b
    :try_start_f
    const-string v2, "AMapLocationManager"

    const-string v3, "apsLocation"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz p1, :cond_4

    :try_start_10
    invoke-virtual {p1}, Lcom/amap/api/col/gk;->c()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_a

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v0

    :try_start_11
    const-string v2, "AMapLocationManager"

    const-string v6, "apsLocation:doFirstCacheLocate"

    invoke-static {v0, v2, v6}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_5
    move-object v2, v1

    goto/16 :goto_1

    :catch_4
    move-exception v0

    :try_start_12
    const-string v3, "AMapLocationManager"

    const-string v6, "apsLocation:doFirstNetLocate"

    invoke-static {v0, v3, v6}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move v3, v4

    goto/16 :goto_2

    :cond_6
    :try_start_13
    const-string v0, "originalLocType"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_5

    :catch_5
    move-exception v0

    :try_start_14
    const-string v1, "AMapLocationManager"

    const-string v4, "apsLocation:callback"

    invoke-static {v0, v1, v4}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_b

    :catch_7
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v4, "apsLocation:reportLBSLocUseTime"

    invoke-static {v0, v1, v4}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_7

    :try_start_15
    invoke-virtual {p1}, Lcom/amap/api/col/gk;->c()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    :cond_7
    :goto_c
    throw v0

    :catch_8
    move-exception v0

    :try_start_16
    const-string v1, "AMapLocationManager"

    const-string v3, "apsLocation:doFirstNetLocate 2"

    invoke-static {v0, v1, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-object v1, v2

    goto :goto_8

    :catch_9
    move-exception v0

    :try_start_17
    const-string v2, "AMapLocationManager"

    const-string v3, "apsLocation:doFirstAddCache"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :cond_8
    move-object v0, v1

    goto :goto_9

    :catch_a
    move-exception v1

    goto :goto_c

    :catch_b
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_b

    :catch_c
    move-exception v1

    goto/16 :goto_4

    :cond_9
    move-object v0, v2

    goto :goto_9

    :cond_a
    move-object v0, v1

    goto/16 :goto_3
.end method

.method a()V
    .locals 5

    new-instance v0, Lcom/amap/api/col/gk;

    invoke-direct {v0}, Lcom/amap/api/col/gk;-><init>()V

    invoke-virtual {p0, v0}, Lcom/amap/api/col/cd;->a(Lcom/amap/api/col/gk;)Lcom/autonavi/aps/amapapi/model/AMapLocationServer;

    move-result-object v1

    invoke-direct {p0}, Lcom/amap/api/col/cd;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "0"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/autonavi/aps/amapapi/model/AMapLocationServer;->getLocationType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    const-string v0, "1"

    :cond_1
    const-string v1, "isCacheLoc"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extraJson"

    iget-object v1, p0, Lcom/amap/api/col/cd;->G:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/amap/api/col/cd;->a(ILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public addGeoFenceAlert(Ljava/lang/String;DDFJLandroid/app/PendingIntent;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/amap/api/fence/GeoFence;

    invoke-direct {v0}, Lcom/amap/api/fence/GeoFence;-><init>()V

    invoke-virtual {v0, p1}, Lcom/amap/api/fence/GeoFence;->setFenceId(Ljava/lang/String;)V

    new-instance v1, Lcom/amap/api/location/DPoint;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/amap/api/location/DPoint;-><init>(DD)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Lcom/amap/api/fence/GeoFence;->setCenter(Lcom/amap/api/location/DPoint;)V

    invoke-virtual {v0, v2}, Lcom/amap/api/fence/GeoFence;->setPointList(Ljava/util/List;)V

    invoke-virtual {v0, p6}, Lcom/amap/api/fence/GeoFence;->setRadius(F)V

    invoke-virtual {v0, p9}, Lcom/amap/api/fence/GeoFence;->setPendingIntent(Landroid/app/PendingIntent;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/amap/api/fence/GeoFence;->setActivatesAction(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/fence/GeoFence;->setType(I)V

    invoke-virtual {v0, p7, p8}, Lcom/amap/api/fence/GeoFence;->setExpiration(J)V

    const/16 v1, 0x3ee

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "addGeoFenceAlert"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method b()V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/cd;->x:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/cd;->x:Z

    iget-object v0, p0, Lcom/amap/api/col/cd;->w:Lcom/amap/api/col/gt;

    invoke-virtual {v0}, Lcom/amap/api/col/gt;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->w:Lcom/amap/api/col/gt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/cd;->w:Lcom/amap/api/col/gt;

    invoke-virtual {v0}, Lcom/amap/api/col/gt;->b()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/cd;->y:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method d()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cd;->w:Lcom/amap/api/col/gt;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/cd;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/cd;->x:Z

    iget-object v0, p0, Lcom/amap/api/col/cd;->w:Lcom/amap/api/col/gt;

    invoke-virtual {v0}, Lcom/amap/api/col/gt;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method e()V
    .locals 4

    iget-wide v0, p0, Lcom/amap/api/col/cd;->z:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/amap/api/col/hu;->m()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "altitude"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/col/cd;->z:D

    const-string v1, "pressure"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/cd;->y:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "readAltitudePressureFromDB"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method f()V
    .locals 4

    :try_start_0
    iget-wide v0, p0, Lcom/amap/api/col/cd;->z:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/cd;->c()V

    iget-wide v0, p0, Lcom/amap/api/col/cd;->z:D

    iget v2, p0, Lcom/amap/api/col/cd;->y:F

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/hu;->a(DF)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "doSaveGPSInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLastKnownLocation()Lcom/amap/api/location/AMapLocation;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/cd;->i:Lcom/amap/api/col/ga;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/cd;->i:Lcom/amap/api/col/ga;

    invoke-virtual {v1}, Lcom/amap/api/col/ga;->a()Lcom/amap/api/location/AMapLocation;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "AMapLocationManager"

    const-string v3, "getLastKnownLocation"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/cd;->P:Z

    return v0
.end method

.method public onDestroy()V
    .locals 4

    const/16 v0, 0x3f3

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/cd;->A:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;)V
    .locals 4

    const/16 v0, 0x3ef

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "removeGeoFenceAlert 2"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeGeoFenceAlert(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/amap/api/fence/GeoFence;

    invoke-direct {v0}, Lcom/amap/api/fence/GeoFence;-><init>()V

    invoke-virtual {v0, p2}, Lcom/amap/api/fence/GeoFence;->setFenceId(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/amap/api/fence/GeoFence;->setPendingIntent(Landroid/app/PendingIntent;)V

    const/16 v1, 0x3f2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "removeGeoFenceAlert 1"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    const/16 v0, 0x3ea

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "setLocationListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V
    .locals 4

    const/16 v0, 0x3fa

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/location/AMapLocationClientOption;->clone()Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "setLocationOption"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAssistantLocation()V
    .locals 4

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLocation()V
    .locals 4

    const/16 v0, 0x3eb

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "startLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopAssistantLocation()V
    .locals 4

    const/16 v0, 0x3f1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopAssistantLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLocation()V
    .locals 4

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V
    .locals 4

    const/16 v0, 0x3ed

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, p1, v2, v3}, Lcom/amap/api/col/cd;->a(ILjava/lang/Object;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AMapLocationManager"

    const-string v2, "unRegisterLocationListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
