.class final Lcom/google/android/gms/internal/ads/zzpk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbji:Lcom/google/android/gms/internal/ads/zzacm;

.field private final synthetic zzbjj:Lcom/google/android/gms/internal/ads/zzpf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzpf;Lcom/google/android/gms/internal/ads/zzacm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbjj:Lcom/google/android/gms/internal/ads/zzpf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbji:Lcom/google/android/gms/internal/ads/zzacm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p2, "id"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbjj:Lcom/google/android/gms/internal/ads/zzpf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzpf;->zzb(Lcom/google/android/gms/internal/ads/zzpf;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpk;->zzbji:Lcom/google/android/gms/internal/ads/zzacm;

    const-string v0, "sendMessageToNativeJs"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzacm;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzakb;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
