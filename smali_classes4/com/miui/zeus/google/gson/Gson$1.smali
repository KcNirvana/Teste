.class Lcom/miui/zeus/google/gson/Gson$1;
.super Ljava/lang/Object;
.source "Gson.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/JsonDeserializationContext;


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/miui/zeus/google/gson/Gson;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/Gson$1;->this$0:Lcom/miui/zeus/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/miui/zeus/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/zeus/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/zeus/google/gson/Gson$1;->this$0:Lcom/miui/zeus/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/google/gson/Gson;->fromJson(Lcom/miui/zeus/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
