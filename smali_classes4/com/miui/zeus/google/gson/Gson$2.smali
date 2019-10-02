.class Lcom/miui/zeus/google/gson/Gson$2;
.super Ljava/lang/Object;
.source "Gson.java"

# interfaces
.implements Lcom/miui/zeus/google/gson/JsonSerializationContext;


# instance fields
.field final synthetic this$0:Lcom/miui/zeus/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/miui/zeus/google/gson/Gson;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/zeus/google/gson/Gson$2;->this$0:Lcom/miui/zeus/google/gson/Gson;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;)Lcom/miui/zeus/google/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/google/gson/Gson$2;->this$0:Lcom/miui/zeus/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/miui/zeus/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/miui/zeus/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/JsonElement;
    .locals 1

    iget-object v0, p0, Lcom/miui/zeus/google/gson/Gson$2;->this$0:Lcom/miui/zeus/google/gson/Gson;

    invoke-virtual {v0, p1, p2}, Lcom/miui/zeus/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/miui/zeus/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
