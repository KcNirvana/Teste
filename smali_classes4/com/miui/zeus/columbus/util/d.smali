.class Lcom/miui/zeus/columbus/util/d;
.super Ljava/lang/Object;
.source "GsonUtils.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/TypeAdapterFactory;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/zeus/columbus/util/d;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/miui/zeus/columbus/util/d;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/zeus/columbus/util/d;->a:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public create(Lcom/miui/zeus/google/gson/Gson;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/zeus/google/gson/Gson;",
            "Lcom/miui/zeus/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/miui/zeus/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lcom/miui/zeus/google/gson/Gson;->getDelegateAdapter(Lcom/miui/zeus/google/gson/TypeAdapterFactory;Lcom/miui/zeus/google/gson/reflect/TypeToken;)Lcom/miui/zeus/google/gson/TypeAdapter;

    move-result-object p1

    new-instance v0, Lcom/miui/zeus/columbus/util/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/zeus/columbus/util/e;-><init>(Lcom/miui/zeus/columbus/util/d;Lcom/miui/zeus/google/gson/TypeAdapter;Lcom/miui/zeus/google/gson/reflect/TypeToken;)V

    return-object v0
.end method
