.class public interface abstract Lorg/jose4j/keys/resolvers/DecryptionKeyResolver;
.super Ljava/lang/Object;
.source "DecryptionKeyResolver.java"


# virtual methods
.method public abstract resolveKey(Lorg/jose4j/jwe/JsonWebEncryption;Ljava/util/List;)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jose4j/jwe/JsonWebEncryption;",
            "Ljava/util/List<",
            "Lorg/jose4j/jwx/JsonWebStructure;",
            ">;)",
            "Ljava/security/Key;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jose4j/lang/UnresolvableKeyException;
        }
    .end annotation
.end method
